version 1.0

task Livekrakenfilter {
  input {
    Int? threshold
    String? db
  }
  command <<<
    livekraken_filter \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threshold: ""
    db: ""
  }
  output {
    File out_stdout = stdout()
  }
}