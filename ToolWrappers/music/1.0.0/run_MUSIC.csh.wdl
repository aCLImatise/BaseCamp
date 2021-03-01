version 1.0

task RunMUSICcsh {
  input {
    File? preprocess
    Boolean? remove_duplicates
    Boolean? get
    String? arguments
  }
  command <<<
    run_MUSIC_csh \
      ~{arguments} \
      ~{if (preprocess) then "-preprocess" else ""} \
      ~{if (remove_duplicates) then "-remove_duplicates" else ""} \
      ~{if (get) then "-get_" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    preprocess: "[Reads file path] [Output dir]"
    remove_duplicates: "[Preprocessed reads dir] [Sorted reads dir] [Pruned reads dir]"
    get: "[relaxed/optimal]_[punctate/broad]_ERs [chip preprocessed dir] [input preprocessed dir] [Multi-mappability profile directory]"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    File out_preprocess = "${in_preprocess}"
  }
}