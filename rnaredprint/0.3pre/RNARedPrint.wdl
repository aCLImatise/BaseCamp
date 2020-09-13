version 1.0

task RNARedPrint {
  input {
    Int? num
    Boolean? count
    Int? weights
    Int? gcw
    Int? model
    Boolean? prefix
  }
  command <<<
    RNARedPrint \
      ~{if defined(num) then ("--num " +  '"' + num + '"') else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if defined(weights) then ("--weights " +  '"' + weights + '"') else ""} \
      ~{if defined(gcw) then ("--gcw " +  '"' + gcw + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if (prefix) then "--prefix" else ""}
  >>>
  parameter_meta {
    num: "- Sets number of generated sequences (default 10)"
    count: "- Simply compute the partition function and report the result."
    weights: ",w2.. - Assigns custom weights to each targeted structure (default 1. for all)"
    gcw: "- Assigns custom weight to each occurrence of GC, to control GC% (default 1.)"
    model: "- Set energy model used for stochastic sampling:\\nm = 0: Uniform\\nm = 1: Nussinov (-3/-2/-1 for GC/AU/GU)\\nm = 2: Base pair energy model (Default; distinguishs GC/AU/GU, inner/exterior)\\nm = 3: Stacking model (no isolated base-pairs!)"
    prefix: "- Prefix path for locating the TD libraries"
  }
  output {
    File out_stdout = stdout()
  }
}