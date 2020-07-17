version 1.0

task LastzD {
  input {
    Boolean? no_mirror
    Boolean? allocate
    String? masking
    Int? identity
    Int? coverage
    File? specify_output_alignment
    String? format
    File? r_dotplot
    String? progress
  }
  command <<<
    lastz_D \
      ~{true="--nomirror" false="" no_mirror} \
      ~{true="--allocate" false="" allocate} \
      ~{if defined(masking) then ("--masking " +  '"' + masking + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(specify_output_alignment) then ("--output " +  '"' + specify_output_alignment + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(r_dotplot) then ("--rdotplot " +  '"' + r_dotplot + '"') else ""} \
      ~{if defined(progress) then ("--progress " +  '"' + progress + '"') else ""}
  >>>
  parameter_meta {
    no_mirror: "don't report mirror-image alignments when using --self (default is to skip processing them, but recreate them in the output)"
    allocate: ":traceback=<bytes>  space for trace-back information (default is 80.0M)"
    masking: "mask any position in target hit this many times zero indicates no masking (default is no masking)"
    identity: "[..<max>] filter alignments by percent identity 0<=min<=max<=100;  blocks (or HSPs) outside min..max are discarded (default is no identity filtering)"
    coverage: "[..<max>] filter alignments by percentage of query covered 0<=min<=max<=100;  blocks (or HSPs) outside min..max are discarded (default is no query coverage filtering)"
    specify_output_alignment: "specify output alignment file;  otherwise alignments are written to stdout"
    format: "specify output format; one of lav, axt, maf, cigar, rdotplot, text or general (use --help=formats for more details) (by default output is LAV)"
    r_dotplot: "create an output file suitable for plotting in R."
    progress: "report processing of every nth query"
  }
}