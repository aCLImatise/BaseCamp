version 1.0

task FermiExample {
  input {
    Boolean? ceu
    String? k
    String? l
    String in_dot_fq
  }
  command <<<
    fermi example \
      ~{in_dot_fq} \
      ~{true="-ceU" false="" ceu} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    ceu: ""
    k: ""
    l: ""
    in_dot_fq: ""
  }
}