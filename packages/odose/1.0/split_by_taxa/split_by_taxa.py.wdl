version 1.0

task SplitByTaxapy {
  input {
    File? genomes_a
    File? genomes_b
    File? orthologs_zip
    File? tax_on_a_zip
    File? tax_on_b_zip
  }
  command <<<
    split_by_taxa_py \
      ~{if defined(genomes_a) then ("--genomes-a " +  '"' + genomes_a + '"') else ""} \
      ~{if defined(genomes_b) then ("--genomes-b " +  '"' + genomes_b + '"') else ""} \
      ~{if defined(orthologs_zip) then ("--orthologs-zip " +  '"' + orthologs_zip + '"') else ""} \
      ~{if defined(tax_on_a_zip) then ("--taxon-a-zip " +  '"' + tax_on_a_zip + '"') else ""} \
      ~{if defined(tax_on_b_zip) then ("--taxon-b-zip " +  '"' + tax_on_b_zip + '"') else ""}
  >>>
  parameter_meta {
    genomes_a: "file with genome GenBank Project ID and Organism name on each line for taxon A"
    genomes_b: "file with genome GenBank Project ID and Organism name on each line for taxon B"
    orthologs_zip: "archive of aligned & trimmed single copy orthologous (SICO) genes"
    tax_on_a_zip: "destination file path for archive of SICO genes belonging to taxon A"
    tax_on_b_zip: "destination file path for archive of SICO genes belonging to taxon B"
  }
  output {
    File out_stdout = stdout()
  }
}