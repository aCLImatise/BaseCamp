version 1.0

task Proda {
  input {
    Int? l
    Boolean? silent
    Boolean? posterior
    Boolean? tran
    Boolean? fast_a
    File filename
  }
  command <<<
    proda \
      ~{filename} \
      ~{if defined(l) then ("-L " +  '"' + l + '"') else ""} \
      ~{true="-silent" false="" silent} \
      ~{true="-posterior" false="" posterior} \
      ~{true="-tran" false="" tran} \
      ~{true="-fasta" false="" fast_a}
  >>>
  parameter_meta {
    l: ""
    silent: ""
    posterior: ""
    tran: ""
    fast_a: ""
    filename: ""
  }
}