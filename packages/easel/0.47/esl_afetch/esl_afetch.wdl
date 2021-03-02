version 1.0

task Eslafetch {
  input {
    Boolean? second_cmdline_arg
    File? output_alignments_file
    File? output_alignment_file
    String? in_format
    String? out_format
    Boolean? index
    String msa_file
    String name_file
    String name
  }
  command <<<
    esl_afetch \
      ~{msa_file} \
      ~{name_file} \
      ~{name} \
      ~{if (second_cmdline_arg) then "-f" else ""} \
      ~{if defined(output_alignments_file) then ("-o " +  '"' + output_alignments_file + '"') else ""} \
      ~{if (output_alignment_file) then "-O" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{if (index) then "--index" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/easel:0.47--h516909a_0"
  }
  parameter_meta {
    second_cmdline_arg: ": second cmdline arg is a file of names to retrieve"
    output_alignments_file: ": output alignments to file <f> instead of stdout"
    output_alignment_file: ": output alignment to file named <key>"
    in_format: ": specify that <msafile> is in format <s>"
    out_format: ": output fetched alignment(s) in format <s>  [Stockholm]"
    index: ": index the <msafile>, creating <msafile>.ssi"
    msa_file: ""
    name_file: ""
    name: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_alignments_file = "${in_output_alignments_file}"
    File out_output_alignment_file = "${in_output_alignment_file}"
  }
}