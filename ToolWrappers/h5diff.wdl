version 1.0

task H5diff {
  input {
    Boolean? report
    Boolean? quiet
    Boolean? enable_error_stack
    Boolean? follow_symlinks
    Boolean? no_dangling_links
    Boolean? compare
    Boolean? nan
    Int? count
    Int? delta
    Int? relative
    Boolean? use_system_epsilon
    File? exclude_path
    String? mode_print_above
    Int file_one
    Int file_two
    String options
  }
  command <<<
    h5diff \
      ~{file_one} \
      ~{file_two} \
      ~{options} \
      ~{if (report) then "--report" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (enable_error_stack) then "--enable-error-stack" else ""} \
      ~{if (follow_symlinks) then "--follow-symlinks" else ""} \
      ~{if (no_dangling_links) then "--no-dangling-links" else ""} \
      ~{if (compare) then "--compare" else ""} \
      ~{if (nan) then "--nan" else ""} \
      ~{if defined(count) then ("--count " +  '"' + count + '"') else ""} \
      ~{if defined(delta) then ("--delta " +  '"' + delta + '"') else ""} \
      ~{if defined(relative) then ("--relative " +  '"' + relative + '"') else ""} \
      ~{if (use_system_epsilon) then "--use-system-epsilon" else ""} \
      ~{if (exclude_path) then "--exclude-path" else ""} \
      ~{if defined(mode_print_above) then ("-v " +  '"' + mode_print_above + '"') else ""}
  >>>
  parameter_meta {
    report: "Report mode. Print differences."
    quiet: "Quiet mode. Do not produce output."
    enable_error_stack: "Prints messages from the HDF5 error stack as they occur."
    follow_symlinks: "Follow symbolic links (soft links and external links and compare the)\\nlinks' target objects.\\nIf symbolic link(s) with the same name exist in the files being\\ncompared, then determine whether the target of each link is an existing\\nobject (dataset, group, or named datatype) or the link is a dangling\\nlink (a soft or external link pointing to a target object that does\\nnot yet exist).\\n- If both symbolic links are dangling links, they are treated as being\\nthe same; by default, h5diff returns an exit code of 0.\\nIf, however, --no-dangling-links is used with --follow-symlinks,\\nthis situation is treated as an error and h5diff returns an\\nexit code of 2.\\n- If only one of the two links is a dangling link,they are treated as\\nbeing different and h5diff returns an exit code of 1.\\nIf, however, --no-dangling-links is used with --follow-symlinks,\\nthis situation is treated as an error and h5diff returns an\\nexit code of 2.\\n- If both symbolic links point to existing objects, h5diff compares the\\ntwo objects.\\nIf any symbolic link specified in the call to h5diff does not exist,\\nh5diff treats it as an error and returns an exit code of 2."
    no_dangling_links: "Must be used with --follow-symlinks option; otherwise, h5diff shows\\nerror message and returns an exit code of 2.\\nCheck for any symbolic links (soft links or external links) that do not\\nresolve to an existing object (dataset, group, or named datatype).\\nIf any dangling link is found, this situation is treated as an error\\nand h5diff returns an exit code of 2."
    compare: "List objects that are not comparable"
    nan: "Avoid NaNs detection"
    count: "Print differences up to C. C must be a positive integer."
    delta: "Print difference if (|a-b| > D). D must be a positive number. Where a\\nis the data point value in file1 and b is the data point value in file2.\\nCan not use with '-p' or '--use-system-epsilon'."
    relative: "Print difference if (|(a-b)/b| > R). R must be a positive number. Where a\\nis the data point value in file1 and b is the data point value in file2.\\nCan not use with '-d' or '--use-system-epsilon'."
    use_system_epsilon: "Print difference if (|a-b| > EPSILON), EPSILON is system defined value. Where a\\nis the data point value in file1 and b is the data point value in file2.\\nIf the system epsilon is not defined,one of the following predefined\\nvalues will be used:\\nFLT_EPSILON = 1.19209E-07 for floating-point type\\nDBL_EPSILON = 2.22045E-16 for double precision type\\nCan not use with '-p' or '-d'."
    exclude_path: "\\\"path\\\"\\nExclude the specified path to an object when comparing files or groups.\\nIf a group is excluded, all member objects will also be excluded.\\nThe specified path is excluded wherever it occurs.\\nThis flexibility enables the same option to exclude either objects that\\nexist only in one file or common objects that are known to differ.\\nWhen comparing files, \\\"path\\\" is the absolute path to the excluded;\\nobject; when comparing groups, \\\"path\\\" is similar to the relative\\npath from the group to the excluded object. This \\\"path\\\" can be\\ntaken from the first section of the output of the --verbose option.\\nFor example, if you are comparing the group /groupA in two files and\\nyou want to exclude /groupA/groupB/groupC in both files, the exclude\\noption would read as follows:\\n--exclude-path \\\"/groupB/groupC\\\"\\nIf there are multiple paths to an object, only the specified path(s)\\nwill be excluded; the comparison will include any path not explicitly\\nexcluded.\\nThis option can be used repeatedly to exclude multiple paths."
    mode_print_above: "mode: print the above plus a list of objects and warnings"
    file_one: "File name of the first HDF5 file"
    file_two: "File name of the second HDF5 file"
    options: "-h, --help\\nPrint a usage message and exit."
  }
  output {
    File out_stdout = stdout()
    File out_exclude_path = "${in_exclude_path}"
  }
}