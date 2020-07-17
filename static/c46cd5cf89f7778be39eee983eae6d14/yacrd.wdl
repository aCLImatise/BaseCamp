version 1.0

task Yacrd {
  input {
    String? coverage
    String? path_input_file
    String? not_coverage
    String? on_disk
    String? on_disk_buffer_size
    String? path_output_file
  }
  command <<<
    yacrd \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(path_input_file) then ("--input " +  '"' + path_input_file + '"') else ""} \
      ~{if defined(not_coverage) then ("--not-coverage " +  '"' + not_coverage + '"') else ""} \
      ~{if defined(on_disk) then ("--ondisk " +  '"' + on_disk + '"') else ""} \
      ~{if defined(on_disk_buffer_size) then ("--ondisk-buffer-size " +  '"' + on_disk_buffer_size + '"') else ""} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""}
  >>>
  parameter_meta {
    coverage: "if coverage reach this value region is mark as bad [default: 0]"
    path_input_file: "path to input file overlap (.paf|.m4|.mhap) or yacrd report (.yacrd), format is autodetect and compression input is allowed (gz|bzip2|lzma)"
    not_coverage: "if the ratio of bad region length on total length is lower than this value, read is marked as NotCovered [default: 0.8]"
    on_disk: "yacrd switches to 'ondisk' mode which will reduce memory usage but increase computation time. The value passed as a parameter is used as a prefix for the temporary files created by yacrd. Be careful if the prefix contains path separators (`/` for unix or `\` for windows) this folder will be deleted"
    on_disk_buffer_size: "with the default value yacrd in 'ondisk' mode use around 1 GBytes, you can increase to reduce runtime but increase memory usage [default: 64000000]"
    path_output_file: "path output file"
  }
}