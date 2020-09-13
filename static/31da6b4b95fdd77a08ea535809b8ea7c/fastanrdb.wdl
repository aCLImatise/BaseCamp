version 1.0

task Fastanrdb {
  input {
    Boolean? help
    File? fast_a
    Boolean? ignorecase
    Boolean? rev_comp
  }
  command <<<
    fastanrdb \
      ~{if (help) then "--help" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (ignorecase) then "--ignorecase" else ""} \
      ~{if (rev_comp) then "--revcomp" else ""}
  >>>
  parameter_meta {
    help: ""
    fast_a: ""
    ignorecase: ""
    rev_comp: ""
  }
  output {
    File out_stdout = stdout()
  }
}