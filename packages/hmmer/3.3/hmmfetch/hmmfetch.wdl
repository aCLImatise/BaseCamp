version 1.0

task Hmmfetch {
  input {
    Boolean? second_cmdline_arg
    File? output_hmm_file_f
    File? output_hmm_file_named
    Boolean? index
  }
  command <<<
    hmmfetch \
      ~{if (second_cmdline_arg) then "-f" else ""} \
      ~{if defined(output_hmm_file_f) then ("-o " +  '"' + output_hmm_file_f + '"') else ""} \
      ~{if (output_hmm_file_named) then "-O" else ""} \
      ~{if (index) then "--index" else ""}
  >>>
  parameter_meta {
    second_cmdline_arg: ": second cmdline arg is a file of names to retrieve"
    output_hmm_file_f: ": output HMM to file <f> instead of stdout"
    output_hmm_file_named: ": output HMM to file named <key>"
    index: ": index the <hmmfile>, creating <hmmfile>.ssi"
  }
  output {
    File out_stdout = stdout()
    File out_output_hmm_file_f = "${in_output_hmm_file_f}"
    File out_output_hmm_file_named = "${in_output_hmm_file_named}"
  }
}