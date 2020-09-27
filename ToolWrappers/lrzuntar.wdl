version 1.0

task Lrzuntar {
  input {
    Boolean? path_will_decompress_lrzip_tarball
    Boolean? path_will_decompress_d_tarball
    Boolean? will_force_overwrites
  }
  command <<<
    lrzuntar \
      ~{if (path_will_decompress_lrzip_tarball) then "-d" else ""} \
      ~{if (path_will_decompress_d_tarball) then "-O" else ""} \
      ~{if (will_force_overwrites) then "-f" else ""}
  >>>
  parameter_meta {
    path_will_decompress_lrzip_tarball: ": <path1> will decompress a <path1> lrzip tarball to current directory."
    path_will_decompress_d_tarball: ": <path2> will decompress a -d specified lrzip tarball to <path2> path."
    will_force_overwrites: ": will force overwrites."
  }
  output {
    File out_stdout = stdout()
  }
}