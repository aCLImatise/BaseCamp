version 1.0

task Fastaremove {
  input {
    Boolean? help
    File? fast_a
    File? remove
  }
  command <<<
    fastaremove \
      ~{if (help) then "--help" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(remove) then ("--remove " +  '"' + remove + '"') else ""}
  >>>
  parameter_meta {
    help: ""
    fast_a: ""
    remove: ""
  }
  output {
    File out_stdout = stdout()
  }
}