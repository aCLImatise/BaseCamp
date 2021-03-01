version 1.0

task FilterKeepOtusBySamplepy {
  input {
    File? otu_map
    File? samples_to_keep_fp
    File? output_otu_map_fp
  }
  command <<<
    filter_keep_otus_by_sample_py \
      ~{if defined(otu_map) then ("--otu_map " +  '"' + otu_map + '"') else ""} \
      ~{if defined(samples_to_keep_fp) then ("--samples_to_keep_fp " +  '"' + samples_to_keep_fp + '"') else ""} \
      ~{if defined(output_otu_map_fp) then ("--output_otu_map_fp " +  '"' + output_otu_map_fp + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    otu_map: "path to the input OTU map (i.e., the output from\\npick_otus.py) [REQUIRED]"
    samples_to_keep_fp: "path to the file containing Sample IDs to keep in the\\nnew OTU map. One Sample ID per line."
    output_otu_map_fp: "path to the output filtered OTU map"
  }
  output {
    File out_stdout = stdout()
    File out_output_otu_map_fp = "${in_output_otu_map_fp}"
  }
}