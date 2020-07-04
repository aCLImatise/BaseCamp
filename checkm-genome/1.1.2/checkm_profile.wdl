version 1.0

task CheckmProfile {
  input {
    File? file
    Boolean? tab_table
    Boolean? quiet
    String coverage_file
  }
  command <<<
    checkm profile \
      ~{coverage_file} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{true="--tab_table" false="" tab_table} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    file: "print results to file (default: stdout)"
    tab_table: "print tab-separated values table"
    quiet: "suppress console output"
    coverage_file: "file indicating coverage of each sequence (see coverage command)"
  }
}