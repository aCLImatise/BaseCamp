version 1.0

task Slice2py {
  input {
    Boolean? uname
    Boolean? idir
    Boolean? print_preprocessor_output
    Directory? output_dir
    Boolean? debug
    Boolean? depend
    Boolean? depend_xml
    File? depend_file
    Boolean? all
    Boolean? checksum
    String? prefix
  }
  command <<<
    slice2py \
      ~{if (uname) then "-UNAME" else ""} \
      ~{if (idir) then "-IDIR" else ""} \
      ~{if (print_preprocessor_output) then "-E" else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (depend) then "--depend" else ""} \
      ~{if (depend_xml) then "--depend-xml" else ""} \
      ~{if defined(depend_file) then ("--depend-file " +  '"' + depend_file + '"') else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if (checksum) then "--checksum" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    uname: "Remove any definition for NAME."
    idir: "Put DIR in the include file search path."
    print_preprocessor_output: "Print preprocessor output on stdout."
    output_dir: "Create files in the directory DIR."
    debug: "Print debug messages."
    depend: "Generate Makefile dependencies."
    depend_xml: "Generate dependencies in XML format."
    depend_file: "Write dependencies to FILE instead of standard output."
    all: "Generate code for Slice definitions in included files."
    checksum: "Generate checksums for Slice definitions."
    prefix: "Prepend filenames of Python modules with PREFIX."
  }
  output {
    File out_stdout = stdout()
    File out_depend_file = "${in_depend_file}"
  }
}