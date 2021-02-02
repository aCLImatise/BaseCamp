version 1.0

task NucmerMultipl {
  input {
    Boolean? input_fasta_file
    Boolean? separate_groups_fasta
    Boolean? path_nucmer_given
    Boolean? additional_arguments_pass
    Boolean? number_use_default
    Boolean? output_prefix_default
    Boolean? include_selfvsself_alignments
    Boolean? include_backalignments_ie
    Boolean? uppercase_output_version
    Boolean? more_options
    Boolean? options
    String or
  }
  command <<<
    nucmer_multi_pl \
      ~{or} \
      ~{if (input_fasta_file) then "-f" else ""} \
      ~{if (separate_groups_fasta) then "-g" else ""} \
      ~{if (path_nucmer_given) then "-n" else ""} \
      ~{if (additional_arguments_pass) then "-a" else ""} \
      ~{if (number_use_default) then "-t" else ""} \
      ~{if (output_prefix_default) then "-o" else ""} \
      ~{if (include_selfvsself_alignments) then "-s" else ""} \
      ~{if (include_backalignments_ie) then "-b" else ""} \
      ~{if (uppercase_output_version) then "-V" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    input_fasta_file: "input fasta file"
    separate_groups_fasta: "separate by groups. Fasta records with headers prefixed by \\\"#group_name#\\\"\\nwhere \\\"group_name\\\" is the name of different strains, for example, will be\\nseparated. Records without headers in this format will be run individually."
    path_nucmer_given: "path to nucmer application (including nucmer). If not given, will try\\nto find nucmer in your PATH"
    additional_arguments_pass: "Additional arguments to pass to nucmer, surrounded by quotes,\\ni.e. \\\"--maxmatch -b 200\\\"."
    number_use_default: "Number of threads to use (Default: 15)"
    output_prefix_default: "Output prefix (default: \\\"out\\\")"
    include_selfvsself_alignments: "Include self-vs-self alignments (default: self-vs-self alignments are\\nnot done when -g is given)"
    include_backalignments_ie: "Include back-alignments, i.e. will align genome A vs genome B and also\\nalign genome B vs genome A\\n(default: each potential alignment will only be included once)"
    uppercase_output_version: "(uppercase) output version number and quit"
    more_options: ""
    options: ""
    or: "-d    maximum number of fasta records to run nucmer on at one time.\\nWARNING: If this number is too small, may result in intense slowdown or\\ncrashing, too big and you may exceed nucmer's internal limits.\\n(default: 1)"
  }
  output {
    File out_stdout = stdout()
  }
}