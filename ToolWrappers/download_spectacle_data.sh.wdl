version 1.0

task DownloadSpectacleDatash {
  input {
    Boolean? canonicalize_following_symlinks
    Boolean? do_add_newline
    Boolean? verbose
    Boolean? fnv
    String readlink
    File file
  }
  command <<<
    download_spectacle_data_sh \
      ~{readlink} \
      ~{file} \
      ~{if (canonicalize_following_symlinks) then "-f" else ""} \
      ~{if (do_add_newline) then "-n" else ""} \
      ~{if (verbose) then "-v" else ""} \
      ~{if (fnv) then "-fnv" else ""}
  >>>
  parameter_meta {
    canonicalize_following_symlinks: "Canonicalize by following all symlinks"
    do_add_newline: "Don't add newline"
    verbose: "Verbose"
    fnv: ""
    readlink: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}