version 1.0

task Ta2ace {
  input {
    File? file_must_end
  }
  command <<<
    ta2ace \
      ~{if defined(file_must_end) then ("-i " +  '"' + file_must_end + '"') else ""}
  >>>
  parameter_meta {
    file_must_end: ".asm TIGR .asm file.  Must end in .asm\\n-o <outfile>    Output file, by default <infile>.ace\\n-c <chromat_dir> Location of the chromatograms\\n-p <phd_dir>    Location of the PHD directory\\n-s <seqfile>    Sequence file, by default <infile>.seq\\n-D <db>         Database (if not using -i and -s)\\n-S <server>     Database info\\n-U <user>\\n-P <pass>\\n-a <asmfile>    List of assemblies to put in .ace file\\n"
  }
  output {
    File out_stdout = stdout()
    File out_file_must_end = "${in_file_must_end}"
  }
}