version 1.0

task Srf2fasta {
  input {
    Boolean? c
    String archive_name
  }
  command <<<
    srf2fasta \
      ~{archive_name} \
      ~{if (c) then "-C" else ""}
  >>>
  parameter_meta {
    c: ""
    archive_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}