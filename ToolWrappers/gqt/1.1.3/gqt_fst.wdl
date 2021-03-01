version 1.0

task GqtFst {
  input {
    File? d
    String? direcory_name_remote
    String? f
    File? l
    File? i
  }
  command <<<
    gqt fst \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(direcory_name_remote) then ("-t " +  '"' + direcory_name_remote + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    d: "\\"
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