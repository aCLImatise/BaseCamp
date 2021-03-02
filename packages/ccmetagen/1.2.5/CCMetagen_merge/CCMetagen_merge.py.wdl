version 1.0

task CCMetagenMergepy {
  input {
    File? input_fp
    String? tax_level
    File? output_fp
    String? keep_or_remove
    String? filtering_tax_level
    String? tax_a_list
  }
  command <<<
    CCMetagen_merge_py \
      ~{if defined(input_fp) then ("--input_fp " +  '"' + input_fp + '"') else ""} \
      ~{if defined(tax_level) then ("--tax_level " +  '"' + tax_level + '"') else ""} \
      ~{if defined(output_fp) then ("--output_fp " +  '"' + output_fp + '"') else ""} \
      ~{if defined(keep_or_remove) then ("--keep_or_remove " +  '"' + keep_or_remove + '"') else ""} \
      ~{if defined(filtering_tax_level) then ("--filtering_tax_level " +  '"' + filtering_tax_level + '"') else ""} \
      ~{if defined(tax_a_list) then ("--taxa_list " +  '"' + tax_a_list + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ccmetagen:1.2.5--pyh3252c3a_0"
  }
  parameter_meta {
    input_fp: "Path to the folder containing CCMetagen text results.\\nNote that files must end with \\\".csv\\\" and the folder\\nshould not contain other .csv files"
    tax_level: "Taxonomic level to merge the results. Options:\\nClosest_match (includes different genes for the same\\nspecies), Species (Default), Genus, Family, Order,\\nClass, Phylum, Kingdom and Superkingdom"
    output_fp: "Path to the output file. Default = merged_samples"
    keep_or_remove: "keep or remove taxa. Options = k (keep), r (remove)\\nand n (none, default)"
    filtering_tax_level: "level to perform taxonomic filtering, default = none"
    tax_a_list: "list taxon names (comma-separated) that you want to\\nkeep or exclude\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_fp = "${in_output_fp}"
  }
}