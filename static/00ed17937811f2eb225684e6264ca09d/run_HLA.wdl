version 1.0

task RunHLA {
  input {
    Boolean? do_create_files
    String? d
    String? t
    File? use_files_datetime
    Boolean? one_column_output
    Boolean? include_entries_start
    Boolean? like_a_exclude
    Boolean? list_by_columns
    Boolean? list_by_lines
    Boolean? follow_symlinks
    Boolean? follow_symlinks_command
    Boolean? recurse
    Boolean? append_dir_entries
    Boolean? append_indicator_one
    Boolean? long_listing_format
    Boolean? list_inode_numbers
    Boolean? list_numeric_uids
    Boolean? list_allocated_blocks
    Boolean? list_full_date
    Boolean? sort_by_size
    Boolean? sort_by_extension
    Boolean? sort_by_version
    Boolean? l_sort_atime
    String? assume_terminal_n
    Boolean? color
    Boolean? one_aacxdlhrfplinsehrsxvctu
    String ls
    String touch
    File? var_file
    File file_dot_dot_dot
  }
  command <<<
    run_HLA \
      ~{ls} \
      ~{touch} \
      ~{var_file} \
      ~{file_dot_dot_dot} \
      ~{if (do_create_files) then "-c" else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(use_files_datetime) then ("-r " +  '"' + use_files_datetime + '"') else ""} \
      ~{if (one_column_output) then "-1" else ""} \
      ~{if (include_entries_start) then "-a" else ""} \
      ~{if (like_a_exclude) then "-A" else ""} \
      ~{if (list_by_columns) then "-C" else ""} \
      ~{if (list_by_lines) then "-x" else ""} \
      ~{if (follow_symlinks) then "-L" else ""} \
      ~{if (follow_symlinks_command) then "-H" else ""} \
      ~{if (recurse) then "-R" else ""} \
      ~{if (append_dir_entries) then "-p" else ""} \
      ~{if (append_indicator_one) then "-F" else ""} \
      ~{if (long_listing_format) then "-l" else ""} \
      ~{if (list_inode_numbers) then "-i" else ""} \
      ~{if (list_numeric_uids) then "-n" else ""} \
      ~{if (list_allocated_blocks) then "-s" else ""} \
      ~{if (list_full_date) then "-e" else ""} \
      ~{if (sort_by_size) then "-S" else ""} \
      ~{if (sort_by_extension) then "-X" else ""} \
      ~{if (sort_by_version) then "-v" else ""} \
      ~{if (l_sort_atime) then "-u" else ""} \
      ~{if defined(assume_terminal_n) then ("-w " +  '"' + assume_terminal_n + '"') else ""} \
      ~{if (color) then "--color" else ""} \
      ~{if (one_aacxdlhrfplinsehrsxvctu) then "-1AaCxdLHRFplinsehrSXvctu" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    do_create_files: "Don't create files"
    d: "Date/time to use"
    t: "Date/time to use"
    use_files_datetime: "Use FILE's date/time"
    one_column_output: "One column output"
    include_entries_start: "Include entries which start with ."
    like_a_exclude: "Like -a, but exclude . and .."
    list_by_columns: "List by columns"
    list_by_lines: "List by lines"
    follow_symlinks: "Follow symlinks"
    follow_symlinks_command: "Follow symlinks on command line"
    recurse: "Recurse"
    append_dir_entries: "Append / to dir entries"
    append_indicator_one: "Append indicator (one of */=@|) to entries"
    long_listing_format: "Long listing format"
    list_inode_numbers: "List inode numbers"
    list_numeric_uids: "List numeric UIDs and GIDs instead of names"
    list_allocated_blocks: "List allocated blocks"
    list_full_date: "List full date and time"
    sort_by_size: "Sort by size"
    sort_by_extension: "Sort by extension"
    sort_by_version: "Sort by version"
    l_sort_atime: "With -l: sort by atime"
    assume_terminal_n: "Assume the terminal is N columns wide"
    color: "[={always,never,auto}]   Control coloring"
    one_aacxdlhrfplinsehrsxvctu: ""
    ls: ""
    touch: ""
    var_file: ""
    file_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}