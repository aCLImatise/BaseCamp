version 1.0

task Extracttranscripttogenemapfromtrinity {
  input {
    String trinity_fast_a_file
    String map_file
  }
  command <<<
    extract_transcript_to_gene_map_from_trinity \
      ~{trinity_fast_a_file} \
      ~{map_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    trinity_fast_a_file: ""
    map_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}