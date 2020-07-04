version 1.0

task AnanseNetwork {
  input {
    File? binding
    Boolean? _expression_scores
    File? output_file
    String? genome
    String? annotation
    Boolean? _files_correlation
    String? n_core
    Boolean? include_promoter
    Boolean? include_enhancer
    String an_anse
    String subcommand
    String network
  }
  command <<<
    ananse network \
      ~{an_anse} \
      ~{subcommand} \
      ~{network} \
      ~{if defined(binding) then ("--binding " +  '"' + binding + '"') else ""} \
      ~{true="-e" false="" _expression_scores} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{true="-c" false="" _files_correlation} \
      ~{if defined(n_core) then ("--ncore " +  '"' + n_core + '"') else ""} \
      ~{true="--include-promoter" false="" include_promoter} \
      ~{true="--include-enhancer" false="" include_enhancer}
  >>>
  parameter_meta {
    binding: "All TFs binding file"
    _expression_scores: "[FILE [FILE ...]], --expression [FILE [FILE ...]] Expression scores"
    output_file: "Output file"
    genome: "Genome"
    annotation: "Gene annotation in BED12 format"
    _files_correlation: "[FILE [FILE ...]], --corrfiles [FILE [FILE ...]] Files with correlation"
    n_core: "Number of core used"
    include_promoter: "Include or exclude promoter peaks (<= TSS +/- 2kb) in network inference. By default promoter peaks are excluded."
    include_enhancer: "Include or exclude enhancer peaks (> TSS +/- 2kb) in network inference. By default enhancer peaks are included."
    an_anse: ""
    subcommand: ""
    network: ""
  }
}