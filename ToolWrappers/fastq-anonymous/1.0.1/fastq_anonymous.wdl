version 1.0

task Fastqanonymous {
  input {
    Boolean? mask
    Boolean? v
  }
  command <<<
    fastq_anonymous \
      ~{if (mask) then "--mask" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    mask: "Mask all nucleotides using N"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}