version 1.0

task VsnpChromosomeReference.py {
  input {
    String? cwd
    Boolean? v
    String prog
  }
  command <<<
    vsnp_chromosome_reference.py \
      ~{prog} \
      ~{if defined(cwd) then ("--cwd " +  '"' + cwd + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    cwd: "Optional: path to VCF files"
    v: ""
    prog: ""
  }
}