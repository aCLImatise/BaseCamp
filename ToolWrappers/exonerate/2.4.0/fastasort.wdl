version 1.0

task Fastasort {
  input {
    Boolean? help
    File? fast_a
    Boolean? check
    String? key
    Boolean? reverse
  }
  command <<<
    fastasort \
      ~{if (help) then "--help" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if (reverse) then "--reverse" else ""}
  >>>
  parameter_meta {
    help: ""
    fast_a: ""
    check: ""
    key: ""
    reverse: ""
  }
  output {
    File out_stdout = stdout()
  }
}