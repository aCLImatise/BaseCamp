version 1.0

task Megamerger {
  input {
    Boolean? word_size
    Boolean? prefer
  }
  command <<<
    megamerger \
      ~{if (word_size) then "-wordsize" else ""} \
      ~{if (prefer) then "-prefer" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    word_size: "integer    [20] Word size (Integer 2 or more)"
    prefer: "boolean    [N] When a mismatch between the two sequence\\nis discovered, one or other of the two\\nsequences must be used to create the merged\\nsequence over this mismatch region. The\\ndefault action is to create the merged\\nsequence using the sequence where the\\nmismatch is closest to that sequence's\\ncentre. If this option is used, then the\\nfirst sequence (seqa) will always be used in\\npreference to the other sequence when there\\nis a mismatch."
  }
  output {
    File out_stdout = stdout()
  }
}