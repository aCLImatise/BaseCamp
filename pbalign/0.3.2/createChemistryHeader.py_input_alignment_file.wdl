version 1.0

task CreateChemistryHeaderpyInputAlignmentFile {
  input {
    Array[String] bas_files
    Boolean? debug
    String get_chemistry_header_do_tpy
  }
  command <<<
    createChemistryHeader_py input_alignment_file \
      ~{get_chemistry_header_do_tpy} \
      ~{if defined(bas_files) then ("--bas_files " +  '"' + bas_files + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    bas_files: ""
    debug: ""
    get_chemistry_header_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}