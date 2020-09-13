version 1.0

task Yacrd {
  input {
    Int? coverage
    File? path_input_overlap
    Int? not_coverage
    File? on_disk
    Int? on_disk_buffer_size
    File? path_output_file
  }
  command <<<
    yacrd \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(path_input_overlap) then ("--input " +  '"' + path_input_overlap + '"') else ""} \
      ~{if defined(not_coverage) then ("--not-coverage " +  '"' + not_coverage + '"') else ""} \
      ~{if defined(on_disk) then ("--ondisk " +  '"' + on_disk + '"') else ""} \
      ~{if defined(on_disk_buffer_size) then ("--ondisk-buffer-size " +  '"' + on_disk_buffer_size + '"') else ""} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""}
  >>>
  parameter_meta {
    coverage: "if coverage reach this value region is mark as bad [default: 0]"
    path_input_overlap: "path to input file overlap (.paf|.m4|.mhap) or yacrd report (.yacrd), format is autodetect and compression\\ninput is allowed (gz|bzip2|lzma)"
    not_coverage: "if the ratio of bad region length on total length is lower than this value, read is marked as NotCovered\\n[default: 0.8]"
    on_disk: "yacrd switches to 'ondisk' mode which will reduce memory usage but increase computation time. The value\\npassed as a parameter is used as a prefix for the temporary files created by yacrd. Be careful if the prefix\\ncontains path separators (`/` for unix or `\\` for windows) this folder will be deleted"
    on_disk_buffer_size: "with the default value yacrd in 'ondisk' mode use around 1 GBytes, you can increase to reduce runtime but\\nincrease memory usage [default: 64000000]"
    path_output_file: "path output file"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
  }
}