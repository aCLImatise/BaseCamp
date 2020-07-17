version 1.0

task Hmmfetch {
  input {
    Boolean? second_cmdline_arg
    String? output_hmm_file_f
    Boolean? output_hmm_file_named
    Boolean? index
  }
  command <<<
    hmmfetch \
      ~{true="-f" false="" second_cmdline_arg} \
      ~{if defined(output_hmm_file_f) then ("-o " +  '"' + output_hmm_file_f + '"') else ""} \
      ~{true="-O" false="" output_hmm_file_named} \
      ~{true="--index" false="" index}
  >>>
  parameter_meta {
    second_cmdline_arg: ": second cmdline arg is a file of names to retrieve"
    output_hmm_file_f: ": output HMM to file <f> instead of stdout"
    output_hmm_file_named: ": output HMM to file named <key>"
    index: ": index the <hmmfile>, creating <hmmfile>.ssi"
  }
}