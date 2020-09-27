version 1.0

task GqtFst {
  input {
    String? direcory_name_remote
    String? f
    File? l
    File? i
  }
  command <<<
    gqt fst \
      ~{if defined(direcory_name_remote) then ("-t " +  '"' + direcory_name_remote + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    direcory_name_remote: "direcory name for remote files (default ./)"
    f: "(requried for pca-shared)\\"
    l: "(requried for pca-shared)\\"
    i: ""
  }
  output {
    File out_stdout = stdout()
    File out_l = "${in_l}"
  }
}