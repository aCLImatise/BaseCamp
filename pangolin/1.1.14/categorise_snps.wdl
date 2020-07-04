version 1.0

task CategoriseSnps.py {
  input {
    String? a
    String? l
    String? metadata
  }
  command <<<
    categorise_snps.py \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""}
  >>>
  parameter_meta {
    a: ""
    l: ""
    metadata: ""
  }
}