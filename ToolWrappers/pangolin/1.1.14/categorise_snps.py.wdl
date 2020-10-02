version 1.0

task CategoriseSnpspy {
  input {
    String? metadata
    String? l
    String? a
  }
  command <<<
    categorise_snps_py \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  parameter_meta {
    metadata: ""
    l: ""
    a: ""
  }
  output {
    File out_stdout = stdout()
  }
}