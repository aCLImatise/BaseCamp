version 1.0

task BamtoolsStats {
  input {
    File? in
    File? list
    Boolean? insert
  }
  command <<<
    bamtools stats \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""} \
      ~{if (insert) then "-insert" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "the input BAM file [stdin]"
    list: "the input BAM file list, one\\nline per file"
    insert: "summarize insert size data"
  }
  output {
    File out_stdout = stdout()
  }
}