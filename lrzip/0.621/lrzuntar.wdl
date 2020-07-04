version 1.0

task Lrzuntar {
  input {
    Boolean? path_will_decompress_path_tarball
    Boolean? path_will_decompress_d_tarball
    Boolean? will_force_overwrites
  }
  command <<<
    lrzuntar \
      ~{true="-d" false="" path_will_decompress_path_tarball} \
      ~{true="-O" false="" path_will_decompress_d_tarball} \
      ~{true="-f" false="" will_force_overwrites}
  >>>
  parameter_meta {
    path_will_decompress_path_tarball: ": <path1> will decompress a <path1> lrzip tarball to current directory."
    path_will_decompress_d_tarball: ": <path2> will decompress a -d specified lrzip tarball to <path2> path."
    will_force_overwrites: ": will force overwrites."
  }
}