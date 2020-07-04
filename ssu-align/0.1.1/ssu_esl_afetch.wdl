version 1.0

task SsuEslAfetch {
  input {
    Boolean? second_cmdline_arg
    String? output_alignments_file
    Boolean? output_alignment_file
    String? in_format
    Boolean? index
    String msa_file
    String name
  }
  command <<<
    ssu-esl-afetch \
      ~{msa_file} \
      ~{name} \
      ~{true="-f" false="" second_cmdline_arg} \
      ~{if defined(output_alignments_file) then ("-o " +  '"' + output_alignments_file + '"') else ""} \
      ~{true="-O" false="" output_alignment_file} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{true="--index" false="" index}
  >>>
  parameter_meta {
    second_cmdline_arg: ": second cmdline arg is a file of names to retrieve"
    output_alignments_file: ": output alignments to file <f> instead of stdout"
    output_alignment_file: ": output alignment to file named <key>"
    in_format: ": specify that <msafile> is in format <s>"
    index: ": index the <msafile>, creating <msafile>.ssi"
    msa_file: ""
    name: ""
  }
}