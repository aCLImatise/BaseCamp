version 1.0

task InnerDistancepy {
  input {
    File? input_file
    String? out_prefix
    String? ref_gene
    Int? sample_size
    Int? lower_bound
    Int? upper_bound
    Int? step
    Int? mapq
    Int read_one
  }
  command <<<
    inner_distance_py \
      ~{read_one} \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""} \
      ~{if defined(sample_size) then ("--sample-size " +  '"' + sample_size + '"') else ""} \
      ~{if defined(lower_bound) then ("--lower-bound " +  '"' + lower_bound + '"') else ""} \
      ~{if defined(upper_bound) then ("--upper-bound " +  '"' + upper_bound + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0"
  }
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format."
    out_prefix: "Prefix of output files(s)"
    ref_gene: "Reference gene model in BED format."
    sample_size: "Number of read-pairs used to estimate inner distance.\\ndefault=1000000"
    lower_bound: "Lower bound of inner distance (bp). This option is\\nused for ploting histograme. default=-250"
    upper_bound: "Upper bound of inner distance (bp). This option is\\nused for plotting histogram. default=250"
    step: "Step size (bp) of histograme. This option is used for\\nplotting histogram. default=5"
    mapq: "Minimum mapping quality (phred scaled) for an\\nalignment to be called \\\"uniquely mapped\\\". default=30\\n"
    read_one: "insert_size     read_2"
  }
  output {
    File out_stdout = stdout()
  }
}