version 1.0

task NucmerAnnotate {
  input {
    Int? ignore
    Boolean? all
    Boolean? loose
    Boolean? no_id
    Boolean? version_print_version
    Boolean? depend
    Int? debug
    String coords_file
  }
  command <<<
    nucmerAnnotate \
      ~{coords_file} \
      ~{if defined(ignore) then ("-ignore " +  '"' + ignore + '"') else ""} \
      ~{if (all) then "-all" else ""} \
      ~{if (loose) then "-loose" else ""} \
      ~{if (no_id) then "-noid" else ""} \
      ~{if (version_print_version) then "-V" else ""} \
      ~{if (depend) then "-depend" else ""} \
      ~{if defined(debug) then ("-debug " +  '"' + debug + '"') else ""}
  >>>
  parameter_meta {
    ignore: "- Maximum length of the end sequence unaligned (Default: 20 bp)"
    all: "- Display all alignments (Default: only the annotated ones)"
    loose: "- Looser annotation"
    no_id: "- Filter out identity alignments (sequences with the same id)"
    version_print_version: "|version      - Print the version and exit;"
    depend: "- Print the program and database dependency list;"
    debug: "- Set the debug <level> (0, non-debug by default);"
    coords_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}