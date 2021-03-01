version 1.0

task CompareTaxa {
  input {
    File? unfiltered_tax_on_a
    File? unfiltered_tax_on_b
    File? filtered_tax_on_a
    File? filtered_tax_on_b
  }
  command <<<
    compare_taxa \
      ~{if defined(unfiltered_tax_on_a) then ("--unfiltered-taxon-a " +  '"' + unfiltered_tax_on_a + '"') else ""} \
      ~{if defined(unfiltered_tax_on_b) then ("--unfiltered-taxon-b " +  '"' + unfiltered_tax_on_b + '"') else ""} \
      ~{if defined(filtered_tax_on_a) then ("--filtered-taxon-a " +  '"' + filtered_tax_on_a + '"') else ""} \
      ~{if defined(filtered_tax_on_b) then ("--filtered-taxon-b " +  '"' + filtered_tax_on_b + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    unfiltered_tax_on_a: "genome IDs for taxon A as deduced from phylogenetic tree of unfiltered concatemers"
    unfiltered_tax_on_b: "genome IDs for taxon B as deduced from phylogenetic tree of unfiltered concatemers"
    filtered_tax_on_a: "genome IDs for taxon A as deduced from phylogenetic tree of filtered concatemers"
    filtered_tax_on_b: "genome IDs for taxon B as deduced from phylogenetic tree of filtered concatemers"
  }
  output {
    File out_stdout = stdout()
  }
}