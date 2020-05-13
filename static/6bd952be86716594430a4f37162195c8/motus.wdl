version 1.0

task Motus {
  input {
    String taxonomicTaxonomic
    String snvSnv
    String? commandCommand
  }
  command <<<
    motus \
      ~{commandCommand} \
      ~{if defined(taxonomicTaxonomic) then ("-- Taxonomic " +  '"' + taxonomicTaxonomic + '"') else ""} \
      ~{if defined(snvSnv) then ("-- SNV " +  '"' + snvSnv + '"') else ""}
  >>>
}