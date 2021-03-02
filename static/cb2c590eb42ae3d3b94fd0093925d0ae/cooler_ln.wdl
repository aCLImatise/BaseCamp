version 1.0

task CoolerLn {
  input {
    Boolean? overwrite
    Boolean? soft
    String src_uri
    String dst_uri
  }
  command <<<
    cooler ln \
      ~{src_uri} \
      ~{dst_uri} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (soft) then "--soft" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    overwrite: "Truncate and replace destination file if it already exists."
    soft: "Creates a soft link rather than a hard link if the source\\nand destination file are the same. Otherwise, creates an\\nexternal link. This type of link uses a path rather than a\\npointer."
    src_uri: ""
    dst_uri: ""
  }
  output {
    File out_stdout = stdout()
  }
}