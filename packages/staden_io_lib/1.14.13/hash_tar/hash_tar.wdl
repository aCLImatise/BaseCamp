version 1.0

task HashTar {
  input {
    File? tar_archive_use
    Boolean? force_name_eg
    Boolean? set_arc_offset
    Boolean? verbose_mode
    Boolean? index_directory_names
    File? set_file_header
    File? set_file_footer
    Boolean? use_only_portion
    String? reads_lines_entries
    String? tar_file
  }
  command <<<
    hash_tar \
      ~{tar_file} \
      ~{if defined(tar_archive_use) then ("-a " +  '"' + tar_archive_use + '"') else ""} \
      ~{if (force_name_eg) then "-A" else ""} \
      ~{if (set_arc_offset) then "-O" else ""} \
      ~{if (verbose_mode) then "-v" else ""} \
      ~{if (index_directory_names) then "-d" else ""} \
      ~{if defined(set_file_header) then ("-h " +  '"' + set_file_header + '"') else ""} \
      ~{if defined(set_file_footer) then ("-f " +  '"' + set_file_footer + '"') else ""} \
      ~{if (use_only_portion) then "-b" else ""} \
      ~{if defined(reads_lines_entries) then ("-m " +  '"' + reads_lines_entries + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0"
  }
  parameter_meta {
    tar_archive_use: "Tar archive filename: use if reading from stdin"
    force_name_eg: "Force no archive name (eg will concat to archive itself)"
    set_arc_offset: "Set arc. offset to size of hash (use when prepending)"
    verbose_mode: "Verbose mode"
    index_directory_names: "Index directory names (useless?)"
    set_file_header: "Set tar entry 'name' to be a file header"
    set_file_footer: "Set tar entry 'name' to be a file footer"
    use_only_portion: "Use only the filename portion of a pathname"
    reads_lines_entries: "Reads lines of 'old new' and renames entries before indexing."
    tar_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}