version 1.0

task Notseq {
  input {
    File? junk_out_seq
    String parameter_dot
  }
  command <<<
    notseq \
      ~{parameter_dot} \
      ~{if (junk_out_seq) then "-junkoutseq" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    junk_out_seq: "seqoutall  [/dev/null] This file collects the sequences\\nwhich you have excluded from the main\\noutput file of sequences."
    parameter_dot: "The list of sequence names can be separated"
  }
  output {
    File out_stdout = stdout()
    File out_junk_out_seq = "${in_junk_out_seq}"
  }
}