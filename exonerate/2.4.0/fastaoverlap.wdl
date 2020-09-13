version 1.0

task Fastaoverlap {
  input {
    Boolean? help
    File? fast_a
    Boolean? chunk
    Boolean? jump
  }
  command <<<
    fastaoverlap \
      ~{if (help) then "--help" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (chunk) then "--chunk" else ""} \
      ~{if (jump) then "--jump" else ""}
  >>>
  parameter_meta {
    help: ""
    fast_a: ""
    chunk: ""
    jump: ""
  }
  output {
    File out_stdout = stdout()
  }
}