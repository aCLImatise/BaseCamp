version 1.0

task GgdPredictpath {
  input {
    String? channel
    File? prefix
    File? id
    Boolean? dir_path
    File? file_name
    File? required_name_predict
    String get_predicted_path
  }
  command <<<
    ggd predict_path \
      ~{get_predicted_path} \
      ~{if defined(channel) then ("--channel " +  '"' + channel + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if (dir_path) then "--dir-path" else ""} \
      ~{if defined(file_name) then ("--file-name " +  '"' + file_name + '"') else ""} \
      ~{if defined(required_name_predict) then ("--package-name " +  '"' + required_name_predict + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ggd:1.1.2--pyh3252c3a_0"
  }
  parameter_meta {
    channel: "The ggd channel of the recipe to find. (Default =\\ngenomics)"
    prefix: "(Optional) The name or the full directory path to an\\nconda environment. The predicted path will be based on\\nthis conda environment. When installing, the data\\npackage should also be installed in this environment.\\n(Only needed if not predicting for a path in the\\ncurrent conda environment)"
    id: "ID   (Optional) The ID to predict the path for if the\\npackage is a meta-recipe. If it is not a meta-recipe\\nit will be ignored"
    dir_path: "(Required if '--file-name' not used) Whether or not to\\nget the predicted directory path rather then the\\npredicted file path. If both --file-name and --dir-\\npath are provided the --file-name will be used and\\n--dir-path will be ignored"
    file_name: "(Required if '--dir-path' not used) The name of the\\nfile to predict that path for. It is best if you give\\nthe full and correct name of the file to predict the\\npath for. If not, ggd will try to identify the right\\nfile, but won't guarantee that it is the right file"
    required_name_predict: "(Required) The name of the data package to predict a\\nfile path for\\n"
    get_predicted_path: "Get a predicted install file path for a data package before it is installed."
  }
  output {
    File out_stdout = stdout()
  }
}