version 1.0

task InnerDistance.py {
  input {
    String? input_file
    String? out_prefix
    String? ref_gene
    String? sample_size
    String? lower_bound
    String? upper_bound
    String? step
    String? mapq
  }
  command <<<
    inner_distance.py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""} \
      ~{if defined(sample_size) then ("--sample-size " +  '"' + sample_size + '"') else ""} \
      ~{if defined(lower_bound) then ("--lower-bound " +  '"' + lower_bound + '"') else ""} \
      ~{if defined(upper_bound) then ("--upper-bound " +  '"' + upper_bound + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format."
    out_prefix: "Prefix of output files(s)"
    ref_gene: "Reference gene model in BED format."
    sample_size: "Number of read-pairs used to estimate inner distance. default=1000000"
    lower_bound: "Lower bound of inner distance (bp). This option is used for ploting histograme. default=-250"
    upper_bound: "Upper bound of inner distance (bp). This option is used for plotting histogram. default=250"
    step: "Step size (bp) of histograme. This option is used for plotting histogram. default=5"
    mapq: "Minimum mapping quality (phred scaled) for an alignment to be called \"uniquely mapped\". default=30"
  }
}