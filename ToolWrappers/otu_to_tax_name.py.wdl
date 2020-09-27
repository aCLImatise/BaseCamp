version 1.0

task OtuToTaxNamepy {
  input {
    File? otu_table
    File? otu_id_fp
    File? output_fp
    Boolean? reverse_lookup
  }
  command <<<
    otu_to_tax_name_py \
      ~{if defined(otu_table) then ("--otu_table " +  '"' + otu_table + '"') else ""} \
      ~{if defined(otu_id_fp) then ("--otu_id_fp " +  '"' + otu_id_fp + '"') else ""} \
      ~{if defined(output_fp) then ("--output_fp " +  '"' + output_fp + '"') else ""} \
      ~{if (reverse_lookup) then "--reverse_lookup" else ""}
  >>>
  parameter_meta {
    otu_table: "Input biom file format OTU table. [REQUIRED]"
    otu_id_fp: "A single or multi-column (tab-separated) file\\ncontaining the OTU IDs to be converted in the first\\ncolumn. [REQUIRED]"
    output_fp: "For a list input, a new file containing a list of OTU\\nIDs and their corresponding short taxonomic\\nidentifiers separated by tabs. For a BIOM file input,\\na new mapping file with all the OTU IDs replaced by\\nthe short identifier.[REQUIRED]"
    reverse_lookup: "Get OTUIDs from genus-species OTU name."
  }
  output {
    File out_stdout = stdout()
  }
}