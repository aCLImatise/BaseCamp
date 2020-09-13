version 1.0

task H5ls {
  input {
    Boolean? address
    Boolean? data
    Boolean? enable_error_stack
    Boolean? follow_symlinks
    Boolean? no_dangling_links
    Boolean? full
    Boolean? group
    Boolean? label
    String? recursive
    Boolean? print_byte_datasets
    Boolean? simple
    Int? width
    Boolean? verbose
    File? vfd
    Boolean? hexdump
    String? external
    Boolean? errors
    String options
    File file_slash_object
  }
  command <<<
    h5ls \
      ~{options} \
      ~{file_slash_object} \
      ~{if (address) then "--address" else ""} \
      ~{if (data) then "--data" else ""} \
      ~{if (enable_error_stack) then "--enable-error-stack" else ""} \
      ~{if (follow_symlinks) then "--follow-symlinks" else ""} \
      ~{if (no_dangling_links) then "--no-dangling-links" else ""} \
      ~{if (full) then "--full" else ""} \
      ~{if (group) then "--group" else ""} \
      ~{if (label) then "--label" else ""} \
      ~{if defined(recursive) then ("--recursive " +  '"' + recursive + '"') else ""} \
      ~{if (print_byte_datasets) then "--string" else ""} \
      ~{if (simple) then "--simple" else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(vfd) then ("--vfd " +  '"' + vfd + '"') else ""} \
      ~{if (hexdump) then "--hexdump" else ""} \
      ~{if defined(external) then ("--external " +  '"' + external + '"') else ""} \
      ~{if (errors) then "--errors" else ""}
  >>>
  parameter_meta {
    address: "Print raw data address.  If dataset is contiguous, address\\nis offset in file of beginning of raw data. If chunked,\\nreturned list of addresses indicates offset of each chunk.\\nMust be used with -v, --verbose option.\\nProvides no information for non-dataset objects."
    data: "Print the values of datasets"
    enable_error_stack: "Prints messages from the HDF5 error stack as they occur."
    follow_symlinks: "Follow symbolic links (soft links and external links)\\nto display target object information.\\nWithout this option, h5ls identifies a symbolic link\\nas a soft link or external link and prints the value\\nassigned to the symbolic link; it does not provide any\\ninformation regarding the target object or determine\\nwhether the link is a dangling link."
    no_dangling_links: "Must be used with --follow-symlinks option;\\notherwise, h5ls shows error message and returns an exit\\ncode of 1.\\nCheck for any symbolic links (soft links or external links)\\nthat do not resolve to an existing object (dataset, group,\\nor named datatype).\\nIf any dangling link is found, this situation is treated\\nas an error and h5ls returns an exit code of 1."
    full: "Print full path names instead of base names"
    group: "Show information about a group, not its contents"
    label: "Label members of compound datasets"
    recursive: "all groups recursively, avoiding cycles"
    print_byte_datasets: "Print 1-byte integer datasets as ASCII"
    simple: "Use a machine-readable output format"
    width: "Set the number of columns of output"
    verbose: "Generate more verbose output"
    vfd: "Use the specified virtual file driver"
    hexdump: "Show raw data in hexadecimal format"
    external: "Follow external links.\\nReplaced by --follow-symlinks."
    errors: "Show all HDF5 error reporting\\nReplaced by --enable-error-stack.\\n"
    options: "-h, -?, --help  Print a usage message and exit"
    file_slash_object: "Each object consists of an HDF5 file name optionally followed by a\\nslash and an object name within the file (if no object is specified\\nwithin the file then the contents of the root group are displayed).\\nThe file name may include a printf(3C) integer format such as\\n\\\"%05d\\\" to open a file family."
  }
  output {
    File out_stdout = stdout()
  }
}