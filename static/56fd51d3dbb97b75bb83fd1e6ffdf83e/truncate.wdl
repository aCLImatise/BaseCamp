version 1.0

task Truncate {
  input {
    Boolean? no_create
    Boolean? io_blocks
    File? reference
    Int? size
    String option_dot_dot_dot
    File file_dot_dot_dot
  }
  command <<<
    truncate \
      ~{option_dot_dot_dot} \
      ~{file_dot_dot_dot} \
      ~{if (no_create) then "--no-create" else ""} \
      ~{if (io_blocks) then "--io-blocks" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""}
  >>>
  parameter_meta {
    no_create: "do not create any files"
    io_blocks: "treat SIZE as number of IO blocks instead of bytes"
    reference: "base size on RFILE"
    size: "set or adjust the file size by SIZE bytes"
    option_dot_dot_dot: ""
    file_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}