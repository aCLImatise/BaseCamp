version 1.0

task Fastafetch {
  input {
    Boolean? help
    File? fast_a
    File? index
    Boolean? fos_n
    String? query
    Boolean? silent
  }
  command <<<
    fastafetch \
      ~{if (help) then "--help" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if (fos_n) then "--fosn" else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  parameter_meta {
    help: ""
    fast_a: ""
    index: ""
    fos_n: ""
    query: ""
    silent: ""
  }
  output {
    File out_stdout = stdout()
  }
}