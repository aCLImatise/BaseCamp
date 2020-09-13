version 1.0

task RsatSubsequence {
  input {
    Boolean? help
    Boolean? verbose
    File? specified_standard_input
    String? mask
    File? specified_standard_output
    Boolean? frag
    String? origin
    Boolean? from
    Boolean? to
    Boolean? i_format
    Boolean? o_format
    String? format
    Boolean? rc
    Boolean? limits
    String sub_sequence
    String sequences
  }
  command <<<
    rsat sub_sequence \
      ~{sub_sequence} \
      ~{sequences} \
      ~{if (help) then "-help" else ""} \
      ~{if (verbose) then "-v" else ""} \
      ~{if defined(specified_standard_input) then ("-i " +  '"' + specified_standard_input + '"') else ""} \
      ~{if defined(mask) then ("-mask " +  '"' + mask + '"') else ""} \
      ~{if defined(specified_standard_output) then ("-o " +  '"' + specified_standard_output + '"') else ""} \
      ~{if (frag) then "-frag" else ""} \
      ~{if defined(origin) then ("-origin " +  '"' + origin + '"') else ""} \
      ~{if (from) then "-from" else ""} \
      ~{if (to) then "-to" else ""} \
      ~{if (i_format) then "-iformat" else ""} \
      ~{if (o_format) then "-oformat" else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{if (rc) then "-rc" else ""} \
      ~{if (limits) then "-limits" else ""}
  >>>
  parameter_meta {
    help: "(must be first argument) display options"
    verbose: "verbose"
    specified_standard_input: "if not specified, the standard input is used.\\nThis allows to place the command within a pipe."
    mask: "|lower\\nMask lower or uppercases, respecively, i.e. replace\\nselected case by N characters."
    specified_standard_output: "if not specified, the standard output is used.\\nThis allows to place the command within a pipe."
    frag: "fragment_file\\nThis option allows to specify a list of fragments t be\\nretrieved from each sequence of the input file.\\nEach row contains the coordinates of a fragment in 4\\nor 5 columns:\\n1) fragment ID\\n2) sequence ID (must be the same as in the sequence file)\\n3) fragment start\\n4) fragment end\\n5) strand (optional). If not specified, all\\nfragments are taken on the direct strand.\\nexample:\\nfrag1   chr2L   344641  348496  D\\nfrag2   chr2L   346419  350309  R\\nfrag3   chr2R   350781  354418  D"
    origin: "| center | end\\nReference for calculating positions.\\nThe value should be chosen according to the sequence\\ntype. For instance:\\n-origin start for downstream sequences\\n-origin end for promoter sequences\\n-origin center can be useful for ChIP-seq peaks, which\\ncan have variable lengths, but are supposed to\\nbe more or less centred on the TF binding\\nqsites."
    from: "# starting position\\nif not specified, the subsequence starts at 1st position."
    to: "#   end position\\nif not specified, the end of the sequence is used."
    i_format: "input format. Default is fasta"
    o_format: "output format. Default is fasta"
    format: "format. Default is fasta"
    rc: "return the reverse complement of the sub-sequences"
    limits: "add a suffix to sequence IDs to indicate the limits of\\nthe sub-sequence."
    sub_sequence: "1998 by Jacques van Helden (Jacques.van-Helden@univ-amu.fr)"
    sequences: "OPTIONS"
  }
  output {
    File out_stdout = stdout()
    File out_specified_standard_output = "${in_specified_standard_output}"
  }
}