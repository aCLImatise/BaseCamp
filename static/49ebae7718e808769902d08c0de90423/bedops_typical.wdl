version 1.0

task BedopsTypical {
  input {
    String? chrom
    Boolean? ec
    Boolean? header
    Boolean? help
    String bed_ops
    String? process_flags
    String operation
  }
  command <<<
    bedops-typical \
      ~{bed_ops} \
      ~{process_flags} \
      ~{operation} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{true="--ec" false="" ec} \
      ~{true="--header" false="" header} \
      ~{true="--help-" false="" help}
  >>>
  parameter_meta {
    chrom: "Jump to and process data for given <chromosome> only."
    ec: "Error check input files (slower)."
    header: "Accept headers (VCF, GFF, SAM, BED, WIG) in any input file."
    help: "<operation>   Detailed help on <operation>. An example is --help-c or --help-complement"
    bed_ops: ""
    process_flags: ""
    operation: ""
  }
}