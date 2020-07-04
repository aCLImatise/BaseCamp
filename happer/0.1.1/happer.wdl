version 1.0

task Happer {
  input {
    File? out
    Boolean? v
  }
  command <<<
    happer \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    out: "write haplotype sequences to the specified file; default is the terminal (stdout)"
    v: ""
  }
}