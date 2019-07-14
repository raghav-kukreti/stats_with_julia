println("Hello from Julia")

for i in 1:3
	print("What's up\n")
end

function bubble_sort(a)
	n = length(a)
	for i in 1:n-1
		for j in 1:n-1
			if a[j] > a[j+1]
			    a[j], a[j+1] = a[j+1], a[j]
			end
		end
	end
    return a
end

arr = [1,34,23,2,4]
print(bubble_sort(arr))