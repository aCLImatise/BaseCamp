version 1.0

task Isaacpackreference {
  input {
    Boolean? canonicalize_following_symlinks
    Boolean? do_add_newline
    Boolean? verbose
    Boolean? fnv
    String dirname
    String readlink
    File var_file
    File filename
  }
  command <<<
    isaac_pack_reference \
      ~{dirname} \
      ~{readlink} \
      ~{var_file} \
      ~{filename} \
      ~{if (canonicalize_following_symlinks) then "-f" else ""} \
      ~{if (do_add_newline) then "-n" else ""} \
      ~{if (verbose) then "-v" else ""} \
      ~{if (fnv) then "-fnv" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/isaac4:04.18.11.09--h07bff40_0"
  }
  parameter_meta {
    canonicalize_following_symlinks: "Canonicalize by following all symlinks"
    do_add_newline: "Don't add newline"
    verbose: "Verbose"
    fnv: ""
    dirname: ""
    readlink: ""
    var_file: ""
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}