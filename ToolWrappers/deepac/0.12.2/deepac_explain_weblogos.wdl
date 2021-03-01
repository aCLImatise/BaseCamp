version 1.0

task DeepacExplainWeblogos {
  input {
    Directory? in_dir
    Boolean? extension_file_format
    String? train_data
    Directory? out_dir
  }
  command <<<
    deepac explain weblogos \
      ~{if defined(in_dir) then ("--in-dir " +  '"' + in_dir + '"') else ""} \
      ~{if (extension_file_format) then "-f" else ""} \
      ~{if defined(train_data) then ("--train-data " +  '"' + train_data + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_dir: "Directory containing motifs per filter"
    extension_file_format: "{.fasta,.transfac}, --file-ext {.fasta,.transfac}\\nExtension of file format of input files (.fasta or\\n.transfac)"
    train_data: "Training data set (.npy) to compute GC-content.\\nN-padding lowers GC!"
    out_dir: "Output directory\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}