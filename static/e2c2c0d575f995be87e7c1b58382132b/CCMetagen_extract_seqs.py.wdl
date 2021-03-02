version 1.0

task CCMetagenExtractSeqspy {
  input {
    String? l
    File? input_frags
    File? input_ccme_tagen
    String? taxonomic_level
    String? tax_on
    File? output_fp
  }
  command <<<
    CCMetagen_extract_seqs_py \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(input_frags) then ("--input_frags " +  '"' + input_frags + '"') else ""} \
      ~{if defined(input_ccme_tagen) then ("--input_ccmetagen " +  '"' + input_ccme_tagen + '"') else ""} \
      ~{if defined(taxonomic_level) then ("--taxonomic_level " +  '"' + taxonomic_level + '"') else ""} \
      ~{if defined(tax_on) then ("--taxon " +  '"' + tax_on + '"') else ""} \
      ~{if defined(output_fp) then ("--output_fp " +  '"' + output_fp + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ccmetagen:1.2.5--pyh3252c3a_0"
  }
  parameter_meta {
    l: "[-o OUTPUT_FP]"
    input_frags: "The path to the file containing frags (decompressed)"
    input_ccme_tagen: "The path to the ccmetagen result csv file"
    taxonomic_level: "Taxonomic level to merge the results. Options:\\nSpecies, Genus, Family, Order, Class, Phylum, Kingdom\\nand Superkingdom"
    tax_on: "Taxon for which you want to extract sequences. Use\\nquotation marks to specify species (e.g. -t\\n'Escherichia coli')"
    output_fp: "Path to the output file. Default = wanted_taxon_seqs\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_fp = "${in_output_fp}"
  }
}