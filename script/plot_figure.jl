using Plots
using StatsPlots
using LaTeXStrings

function run_single_val()
    vals = [
        10.2 8.3
        45.3 39.1
        57.1 82.3
    ]
    groupedbar(["MNIST", "ImageNet", "Places"], vals,
               label=["kmeans" "Ours"], bar_width=0.5, legend=:topleft)
    xlabel!("Dataset")
    ylabel!("Runtime (ms)")
    savefig("single_val.pdf")
end

function run_use_case()
    Ts = [1, 4, 16]

    val = [
        0.32 0.41
        0.54 0.81
        0.77 1.23
    ]

    plot(Ts, val, label=["ResNet50" "Ours"],
        legend=:topleft, lw=3, markersize=8,
        markershapes=[:square :circle], linestyle=[:solid :dash]) 

    xlabel!(L"$T$")
    ylabel!("mAP")
    savefig("use_case.pdf")
end

run_single_val()
run_use_case()