version 1.0

task RsatPurgesequence {
  input {
    Boolean? help
    Boolean? verbose
    File? file_containing_sequence
    String? format
    File? specified_standard_output
    Boolean? dry_runprint_commands
    Boolean? ml
    Boolean? mis
    Boolean? one_str
    Boolean? two_str
    Boolean? del
    Int? mask_short
    Int? skip_short
    Boolean? no_die
    String purge_sequence
    String sequences
  }
  command <<<
    rsat purge_sequence \
      ~{purge_sequence} \
      ~{sequences} \
      ~{if (help) then "-help" else ""} \
      ~{if (verbose) then "-v" else ""} \
      ~{if defined(file_containing_sequence) then ("-i " +  '"' + file_containing_sequence + '"') else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{if defined(specified_standard_output) then ("-o " +  '"' + specified_standard_output + '"') else ""} \
      ~{if (dry_runprint_commands) then "-n" else ""} \
      ~{if (ml) then "-ml" else ""} \
      ~{if (mis) then "-mis" else ""} \
      ~{if (one_str) then "-1str" else ""} \
      ~{if (two_str) then "-2str" else ""} \
      ~{if (del) then "-del" else ""} \
      ~{if defined(mask_short) then ("-mask_short " +  '"' + mask_short + '"') else ""} \
      ~{if defined(skip_short) then ("-skip_short " +  '"' + skip_short + '"') else ""} \
      ~{if (no_die) then "-nodie" else ""}
  >>>
  parameter_meta {
    help: "(must be first argument) display options"
    verbose: "verbose"
    file_containing_sequence: "The file containing the sequence to purge.\\nIf input_file is not specified, the standard input is\\nused.  This allows to place the command within a pipe."
    format: "format"
    specified_standard_output: "if not specified, the standard output is used.\\nThis allows to place the command within a pipe."
    dry_runprint_commands: "dry run\\nprint commands without executing them"
    ml: "#   match length (default: 40)"
    mis: "#  mismatches (default: 3)"
    one_str: "discard duplications on the direct strand only"
    two_str: "discard duplications on the reverse complement as well"
    del: "delete repeats instead of masking them\\nBy default, repeats are masked, i.e. each nucleotide\\nwithin a repeat is replaced by the letter n.  When the\\noption -del is selected, repeats are deleted. This\\nmeans that one sequence of input can be converted to\\nseveral fragments in the output."
    mask_short: "Mask (replace by N characters) sequences strictly\\nshorter than the specified length. This can be useful\\nto discard short intergenic segments from the motif\\ndiscovery step, especially when working with bacterial\\ngenomes, where short intergenic sequences generally\\ncorrespond to intra-operon segments."
    skip_short: "Skip sequences strictly shorter than the specified\\nlength. Same functionality as -mask_short, except that\\nshort sequences are not returned at all in the output.\\nSkipping short sequences can be useful to prevent\\nindexing problems, when the input files contain\\nsequences shorter than the indexing prefix."
    no_die: "The perl script purge-sequence does not die in case\\nthe encapsulated programs (mkvtree, vmatch) return an\\nerror message.\\n"
    purge_sequence: "1999 by Jacques van Helden (Jacques.van-Helden@univ-amu.fr)"
    sequences: "OPTIONS"
  }
  output {
    File out_stdout = stdout()
    File out_specified_standard_output = "${in_specified_standard_output}"
  }
}