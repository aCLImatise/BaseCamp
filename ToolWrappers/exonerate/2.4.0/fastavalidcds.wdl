version 1.0

task Fastavalidcds {
  input {
    Boolean? help
    File? fast_a
    Boolean? explain
  }
  command <<<
    fastavalidcds \
      ~{if (help) then "--help" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (explain) then "--explain" else ""}
  >>>
  parameter_meta {
    help: ""
    fast_a: ""
    explain: ""
  }
  output {
    File out_stdout = stdout()
  }
}