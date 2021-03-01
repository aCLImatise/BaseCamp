version 1.0

task FilterBiompy {
  input {
    File? filter_ot_uids_fnh
    String input_biom_fnh
    String output_biom_fnh
    String mapping_fnh
  }
  command <<<
    filter_biom_py \
      ~{input_biom_fnh} \
      ~{output_biom_fnh} \
      ~{mapping_fnh} \
      ~{if defined(filter_ot_uids_fnh) then ("--filter_otuids_fnh " +  '"' + filter_ot_uids_fnh + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    filter_ot_uids_fnh: "Path to file to write out the list of OTUIDs not\\npresent in any SampleIDs in mapping file. This output\\nis usually used to filter out unwanted otuids from\\n.tre file. If not given, the discarded OTUIDs list\\nwill be saved in the current working directory.\\n"
    input_biom_fnh: "BIOM file path."
    output_biom_fnh: "Filtered biom output file."
    mapping_fnh: "Mapping file with sampleIDs to retain in it. The\\n'#SampleID' column will be used to get the list of all\\nids to retain."
  }
  output {
    File out_stdout = stdout()
    File out_filter_ot_uids_fnh = "${in_filter_ot_uids_fnh}"
  }
}