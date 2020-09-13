version 1.0

task Varda2clientSeq {
  input {
    String? sequence
  }
  command <<<
    varda2_client seq \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  parameter_meta {
    sequence: "Sequence\\n"
  }
  output {
    File out_stdout = stdout()
  }
}