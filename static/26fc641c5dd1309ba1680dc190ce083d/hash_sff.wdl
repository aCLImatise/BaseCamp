version 1.0

task HashSff {
  input {
    Boolean? t
    String? o
    String sff_file
  }
  command <<<
    hash_sff \
      ~{sff_file} \
      ~{if (t) then "-t" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0"
  }
  parameter_meta {
    t: ""
    o: ""
    sff_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}