version 1.0

task MetagenomeContributions.py {
  input {
    String? input_otu_table
    String? output_fp
  }
  command <<<
    metagenome_contributions.py \
      ~{if defined(input_otu_table) then ("--input_otu_table " +  '"' + input_otu_table + '"') else ""} \
      ~{if defined(output_fp) then ("--output_fp " +  '"' + output_fp + '"') else ""}
  >>>
  parameter_meta {
    input_otu_table: "the input otu table in biom format [REQUIRED]"
    output_fp: "the output file for the metagenome contributions [REQUIRED]"
  }
}