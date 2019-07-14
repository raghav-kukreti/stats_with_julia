# Simple 2 dice roll monte carlo sim

using PyPlot

function run_sim()
    N = 10^6
    num_faces = 1:6
    num_even = 0
    for i in 1:N
        face_one = rand(num_faces)
        face_two = rand(num_faces)

        if (face_one + face_two)%2 == 0
            num_even+=1
        end
    end

    print(num_even/N)
end

run_sim()
