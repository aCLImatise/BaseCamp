version 1.0

task MergeSampleDensitys {
  input {
    Int? density_files_egtestdataframetxttestdataframetxt
    File? output_filename
  }
  command <<<
    MergeSampleDensitys \
      ~{if defined(density_files_egtestdataframetxttestdataframetxt) then ("--input " +  '"' + density_files_egtestdataframetxttestdataframetxt + '"') else ""} \
      ~{if defined(output_filename) then ("--output " +  '"' + output_filename + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0"
  }
  parameter_meta {
    density_files_egtestdataframetxttestdataframetxt: "Density files in txt format separated by comma. e.g.\\ntest1_dataframe.txt,test2_dataframe.txt"
    output_filename: "Output filename.[required]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
  }
}