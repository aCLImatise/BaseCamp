version 1.0

task CombinePeaks {
  input {
    Boolean? macs_summit_files
    File? genome
    Int? window
    Boolean? scale
    String? fname
  }
  command <<<
    combine_peaks \
      ~{fname} \
      ~{if (macs_summit_files) then "-i" else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if (scale) then "--scale" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gimmemotifs:0.15.2--py38h0213d0e_0"
  }
  parameter_meta {
    macs_summit_files: "[FNAME [FNAME ...]], --input [FNAME [FNAME ...]]\\nMACS2 summit or narrowPeak files"
    genome: "Genome name or genome file"
    window: "Window size (default 200)"
    scale: "Scale summit values"
    fname: ""
  }
  output {
    File out_stdout = stdout()
  }
}