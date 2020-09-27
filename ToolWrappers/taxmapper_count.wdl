version 1.0

task TaxmapperCount {
  input {
    File? tax
    File? out_one
    File? out_two
  }
  command <<<
    taxmapper count \
      ~{if defined(tax) then ("--tax " +  '"' + tax + '"') else ""} \
      ~{if defined(out_one) then ("--out1 " +  '"' + out_one + '"') else ""} \
      ~{if defined(out_two) then ("--out2 " +  '"' + out_two + '"') else ""}
  >>>
  parameter_meta {
    tax: "Filtered taxonomy mapping file."
    out_one: "Output file 1, counted taxa for first taxonomic\\nhierarchy [default: taxa_counts_level1.tsv]"
    out_two: "Output file 2, counted taxa for second taxonomic\\nhierarchy [default: taxa_counts_level2.tsv]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_one = "${in_out_one}"
    File out_out_two = "${in_out_two}"
  }
}