version 1.0

task MakeMetaGeneProfile.pl {
  input {
    Boolean? min
    Boolean? max
    Boolean? gb_in
    Boolean? g_ratio
    Boolean? bin
    Boolean? size
    String peak_file
    String genome
  }
  command <<<
    makeMetaGeneProfile.pl \
      ~{peak_file} \
      ~{genome} \
      ~{true="-min" false="" min} \
      ~{true="-max" false="" max} \
      ~{true="-gbin" false="" gb_in} \
      ~{true="-gRatio" false="" g_ratio} \
      ~{true="-bin" false="" bin} \
      ~{true="-size" false="" size}
  >>>
  parameter_meta {
    min: "<#> (minimum size of genes/regions to use, default: 3000) (This prevents extremely small regions from being used)"
    max: "<#> (max size of genes/regions to use, default: no max)"
    gb_in: "<#> (Number of bins in gene body, default: 50)"
    g_ratio: "<#> (Ratio of gene region to flanks, default: 2)"
    bin: "<#> (Bin size for 5' and 3' flanks, default: 100)"
    size: "<#> (Size of 5' and 3' flanks, default: 5000)"
    peak_file: ""
    genome: ""
  }
}