version 1.0

task Fastasubseq {
  input {
    Boolean? help
    File? fast_a
    String? start
    Int? length
  }
  command <<<
    fastasubseq \
      ~{if (help) then "--help" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""}
  >>>
  parameter_meta {
    help: ""
    fast_a: ""
    start: ""
    length: ""
  }
  output {
    File out_stdout = stdout()
  }
}