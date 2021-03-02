version 1.0

task Infoassembly {
  input {
    Boolean? ref_sequence
    Boolean? window_size
    Boolean? bisulfite
  }
  command <<<
    infoassembly \
      ~{if (ref_sequence) then "-refsequence" else ""} \
      ~{if (window_size) then "-windowsize" else ""} \
      ~{if (bisulfite) then "-bisulfite" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref_sequence: "seqset     Reference sequences in the assembly"
    window_size: "integer    [100] The size of windows on the genome that\\nare used to bin reads. (Any integer value)"
    bisulfite: "boolean    [N] If this is true, it is assumed that the\\nreads were bisulfite treated"
  }
  output {
    File out_stdout = stdout()
  }
}