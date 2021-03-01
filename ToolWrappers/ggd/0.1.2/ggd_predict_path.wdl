version 1.0

task GgdPredictpath {
  input {
    String? channel
    File? prefix
    File? package_name
    File? file_name
  }
  command <<<
    ggd predict_path \
      ~{if defined(channel) then ("--channel " +  '"' + channel + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(package_name) then ("--package-name " +  '"' + package_name + '"') else ""} \
      ~{if defined(file_name) then ("--file-name " +  '"' + file_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    channel: "The ggd channel of the recipe to find. (Default =\\ngenomics)"
    prefix: "(Optional) The name or the full directory path to an\\nconda environment. The predicted path will be based on\\nthis conda environment. When installing, the data\\npackage should also be installed in this environment.\\n(Only needed if not predicting for a path in the\\ncurrent conda enviroment)"
    package_name: "(Required) The name of the data package to predict a\\nfile path for"
    file_name: "(Required) The name of the file to predict that path\\nfor. It is best if you give the full and correct name\\nof the file to predict the path for. If not, ggd will\\ntry to identify the right file, but won't guarantee\\nthat it is the rigth file\\n"
  }
  output {
    File out_stdout = stdout()
  }
}