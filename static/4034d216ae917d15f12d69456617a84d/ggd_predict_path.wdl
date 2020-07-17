version 1.0

task GgdPredictPath {
  input {
    String? channel
    String? prefix
    String? package_name
    File? file_name
  }
  command <<<
    ggd predict-path \
      ~{if defined(channel) then ("--channel " +  '"' + channel + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(package_name) then ("--package-name " +  '"' + package_name + '"') else ""} \
      ~{if defined(file_name) then ("--file-name " +  '"' + file_name + '"') else ""}
  >>>
  parameter_meta {
    channel: "The ggd channel of the recipe to find. (Default = genomics)"
    prefix: "(Optional) The name or the full directory path to an conda environment. The predicted path will be based on this conda environment. When installing, the data package should also be installed in this environment. (Only needed if not predicting for a path in the current conda enviroment)"
    package_name: "(Required) The name of the data package to predict a file path for"
    file_name: "(Required) The name of the file to predict that path for. It is best if you give the full and correct name of the file to predict the path for. If not, ggd will try to identify the right file, but won't guarantee that it is the rigth file"
  }
}