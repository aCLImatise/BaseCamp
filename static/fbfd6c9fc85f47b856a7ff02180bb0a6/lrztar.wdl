version 1.0

task Lrztar {
  input {
    Boolean? path_decompress_lrzip_tarball
    Boolean? path_decompress_d_tarball
    Boolean? _force_overwrites
  }
  command <<<
    lrztar \
      ~{if (path_decompress_lrzip_tarball) then "-d" else ""} \
      ~{if (path_decompress_d_tarball) then "-O" else ""} \
      ~{if (_force_overwrites) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_decompress_lrzip_tarball: ": <path1> will decompress a <path1> lrzip tarball to current directory."
    path_decompress_d_tarball: ": <path2> will decompress a -d specified lrzip tarball to <path2> path."
    _force_overwrites: ": will force overwrites."
  }
  output {
    File out_stdout = stdout()
  }
}