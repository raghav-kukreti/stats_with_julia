using Random

Random.seed!(1)

N = 10^5
prob_one = .7
eps0 = 0.1
eps1 = 0.05

function flip_probability(bit, prob)
    return rand() < prob ? xor(bit, 1) : bit
end

tx_data = rand(N) .< prob_one
rx_data = [x == 0 ? flip_probability(x, eps0) : flip_probability(x, eps1) for x in tx_data]


temp = 0
num_rx_one = 0

for i in 1:N
    if rx_data[i] == 1
        global temp += 1
        global num_rx_one += tx_data[i]
    end
end

println(num_rx_one/temp, ((1-eps1) * prob_one)/(prob_one*(1-eps1) + .3*eps0))
