version 1.0

task Truspadespy {
  input {
    Boolean? test
    Boolean? outputdir_directory_store
    Boolean? threads
    Boolean? continue
    Boolean? construct_dataset
    Boolean? input_dir
    Boolean? dataset
  }
  command <<<
    truspades_py \
      ~{if (test) then "--test" else ""} \
      ~{if (outputdir_directory_store) then "-o" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if (construct_dataset) then "--construct-dataset" else ""} \
      ~{if (input_dir) then "--input-dir" else ""} \
      ~{if (dataset) then "--dataset" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    test: "run truSPAdes on toy dataset"
    outputdir_directory_store: "<output_dir>    directory to store all the resulting files (required)"
    threads: "<int>           number of threads"
    continue: "continue interrupted launch"
    construct_dataset: "parse dataset from input folder"
    input_dir: "<directory>     directory with input data. Note that the directory should contain only files with reads. This option can be used several times to provide several input directories."
    dataset: "<file>          file with dataset description"
  }
  output {
    File out_stdout = stdout()
  }
}