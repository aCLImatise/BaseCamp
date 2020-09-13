version 1.0

task Fasta2esd {
  input {
    Boolean? help
    File? fast_a
    File? var_output
    Boolean? alphabet
    Boolean? soft_mask
  }
  command <<<
    fasta2esd \
      ~{if (help) then "--help" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if (alphabet) then "--alphabet" else ""} \
      ~{if (soft_mask) then "--softmask" else ""}
  >>>
  parameter_meta {
    help: ""
    fast_a: ""
    var_output: ""
    alphabet: ""
    soft_mask: ""
  }
  output {
    File out_stdout = stdout()
  }
}