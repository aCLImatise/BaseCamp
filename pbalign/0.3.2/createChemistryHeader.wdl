version 1.0

task CreateChemistryHeader.pyOutputHeaderFile {
  input {
    Boolean? debug
    Array[String] bas_files
    String get_chemistry_header_do_tpy
  }
  command <<<
    createChemistryHeader.py output_header_file \
      ~{get_chemistry_header_do_tpy} \
      ~{true="--debug" false="" debug} \
      ~{if defined(bas_files) then ("--bas_files " +  '"' + bas_files + '"') else ""}
  >>>
  parameter_meta {
    debug: ""
    bas_files: ""
    get_chemistry_header_do_tpy: ""
  }
}