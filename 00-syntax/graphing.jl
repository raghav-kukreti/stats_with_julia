using PyPlot
function create_data(x::Int)
	n = 0
	while x != 1
		if x %2 == 0
			x = Int(x/2)
		else
			x = 3x + 1
		end
		n += 1
	end
	return n
end

lengths = [create_data(x0) for x0 in 2:10^7]

plt.hist(lengths, 1000)
xlabel("Length")
ylabel("Frequency")

plt.show()

gcf()
