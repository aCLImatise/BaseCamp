version 1.0

task Truspadespy {
  input {
    Boolean? h_slash_help
    Boolean? v_slash_version
    Boolean? test
    Boolean? outputdir_directory_store
    Boolean? t_slash_threads
    Boolean? continue
    Boolean? construct_dataset
    Boolean? input_dir
    Boolean? dataset
  }
  command <<<
    truspades_py \
      ~{if (h_slash_help) then "-h/--help" else ""} \
      ~{if (v_slash_version) then "-v/--version" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (outputdir_directory_store) then "-o" else ""} \
      ~{if (t_slash_threads) then "-t/--threads" else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if (construct_dataset) then "--construct-dataset" else ""} \
      ~{if (input_dir) then "--input-dir" else ""} \
      ~{if (dataset) then "--dataset" else ""}
  >>>
  parameter_meta {
    h_slash_help: "prints this usage message"
    v_slash_version: "prints version"
    test: "run truSPAdes on toy dataset"
    outputdir_directory_store: "<output_dir>    directory to store all the resulting files (required)"
    t_slash_threads: "<int>           number of threads"
    continue: "continue interrupted launch"
    construct_dataset: "parse dataset from input folder"
    input_dir: "<directory>     directory with input data. Note that the directory should contain only files with reads. This option can be used several times to provide several input directories."
    dataset: "<file>          file with dataset description"
  }
  output {
    File out_stdout = stdout()
  }
}