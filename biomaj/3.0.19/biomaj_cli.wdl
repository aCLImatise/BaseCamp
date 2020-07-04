version 1.0

task BiomajCli.py {
  input {
    String? c
    Boolean? check
    Boolean? u
    Boolean? from_scratch
    Boolean? z
    Boolean? p
  }
  command <<<
    biomaj-cli.py \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{true="--check" false="" check} \
      ~{true="-u" false="" u} \
      ~{true="--fromscratch" false="" from_scratch} \
      ~{true="-z" false="" z} \
      ~{true="-p" false="" p}
  >>>
  parameter_meta {
    c: ""
    check: ""
    u: ""
    from_scratch: ""
    z: ""
    p: ""
  }
}