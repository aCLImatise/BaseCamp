version 1.0

task MakeMetaGeneProfilepl {
  input {
    Boolean? min
    Boolean? max
    Boolean? gb_in
    Boolean? g_ratio
    Boolean? bin
    Boolean? size
    File peak_file
    String genome
  }
  command <<<
    makeMetaGeneProfile_pl \
      ~{peak_file} \
      ~{genome} \
      ~{if (min) then "-min" else ""} \
      ~{if (max) then "-max" else ""} \
      ~{if (gb_in) then "-gbin" else ""} \
      ~{if (g_ratio) then "-gRatio" else ""} \
      ~{if (bin) then "-bin" else ""} \
      ~{if (size) then "-size" else ""}
  >>>
  parameter_meta {
    min: "<#> (minimum size of genes/regions to use, default: 3000)\\n(This prevents extremely small regions from being used)"
    max: "<#> (max size of genes/regions to use, default: no max)"
    gb_in: "<#> (Number of bins in gene body, default: 50)"
    g_ratio: "<#> (Ratio of gene region to flanks, default: 2)"
    bin: "<#> (Bin size for 5' and 3' flanks, default: 100)"
    size: "<#> (Size of 5' and 3' flanks, default: 5000)"
    peak_file: ""
    genome: ""
  }
  output {
    File out_stdout = stdout()
  }
}