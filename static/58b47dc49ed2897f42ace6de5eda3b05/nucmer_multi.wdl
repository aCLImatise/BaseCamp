version 1.0

task NucmerMulti.pl {
  input {
    Boolean? input_fasta_file
    Boolean? path_nucmer_application
    Boolean? additional_arguments_pass
    Boolean? number_use_default
    Boolean? output_prefix_default
    Boolean? include_selfvsself_alignments
    Boolean? include_backalignments_align
    Boolean? uppercase_output_version
    Boolean? options
    Boolean? more_options
  }
  command <<<
    nucmer_multi.pl \
      ~{true="-f" false="" input_fasta_file} \
      ~{true="-n" false="" path_nucmer_application} \
      ~{true="-a" false="" additional_arguments_pass} \
      ~{true="-t" false="" number_use_default} \
      ~{true="-o" false="" output_prefix_default} \
      ~{true="-s" false="" include_selfvsself_alignments} \
      ~{true="-b" false="" include_backalignments_align} \
      ~{true="-V" false="" uppercase_output_version} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    input_fasta_file: "input fasta file"
    path_nucmer_application: "path to nucmer application (including nucmer). If not given, will try to find nucmer in your PATH"
    additional_arguments_pass: "Additional arguments to pass to nucmer, surrounded by quotes, i.e. \"--maxmatch -b 200\"."
    number_use_default: "Number of threads to use (Default: 15)"
    output_prefix_default: "Output prefix (default: \"out\")"
    include_selfvsself_alignments: "Include self-vs-self alignments (default: self-vs-self alignments are not done when -g is given)"
    include_backalignments_align: "Include back-alignments, i.e. will align genome A vs genome B and also align genome B vs genome A (default: each potential alignment will only be included once)"
    uppercase_output_version: "(uppercase) output version number and quit"
    options: ""
    more_options: ""
  }
}