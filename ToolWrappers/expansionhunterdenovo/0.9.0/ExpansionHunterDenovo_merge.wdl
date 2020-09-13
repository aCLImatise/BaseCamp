version 1.0

task ExpansionHunterDenovoMerge {
  input {
    File? reference
    String? manifest
    String? output_prefix
    Int? min_unit_len
    Int? max_unit_len
  }
  command <<<
    ExpansionHunterDenovo merge \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(manifest) then ("--manifest " +  '"' + manifest + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(min_unit_len) then ("--min-unit-len " +  '"' + min_unit_len + '"') else ""} \
      ~{if defined(max_unit_len) then ("--max-unit-len " +  '"' + max_unit_len + '"') else ""}
  >>>
  parameter_meta {
    reference: "FASTA file with reference assembly"
    manifest: "TSV with sample names and absolute paths"
    output_prefix: "Prefix for the output files"
    min_unit_len: "(=2)  Shortest repeat unit to consider"
    max_unit_len: "(=20) Longest repeat unit to consider"
  }
  output {
    File out_stdout = stdout()
  }
}