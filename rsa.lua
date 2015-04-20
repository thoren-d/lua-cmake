function mod_exp(b, e, n)
	local acc = 1
	local base = b
	local exponent = e
	
	while exponent > 0 do
		if exponent % 2 == 1 then
			acc = (acc * base) % n
		end
		base = (base * base) % n
		exponent = exponent // 2
	end
	
	return acc
end

function mult_inverse(a, n)
	local t = 0
	local newt = 1
	local r = n
	local newr = a
	while newr ~= 0 do
		q = r // newr
		local tmp = newt
		newt = t - q * newt
		t = tmp
		
		tmp = newr
		newr = r - q * newr
		r = tmp
	end
	if r > 1 then
		return nil
	end
	if t < 0 then
		t = t + n
	end
	return t
end

function compute_private(p, q, e)
	local tn = (p - 1) * (q - 1)
	return mult_inverse(e, tn)
end