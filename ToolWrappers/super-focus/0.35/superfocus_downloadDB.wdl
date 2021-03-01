version 1.0

task SuperfocusDownloadDB {
  input {
    String? aligner
    Int? clusters
    String? target_input_files
    Boolean? v
  }
  command <<<
    superfocus_downloadDB \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(target_input_files) then ("--input " +  '"' + target_input_files + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    aligner: "Aligner name separed by ',' if more than one"
    clusters: "DB types separed by ',' if more than one (e.g\\n90,95,98,100) - default 90"
    target_input_files: "Target input files to be formatted into the database"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}