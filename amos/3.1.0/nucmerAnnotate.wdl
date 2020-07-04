version 1.0

task NucmerAnnotate {
  input {
    String? ignore
    Boolean? all
    Boolean? loose
    Boolean? no_id
    Boolean? version_print_version
    Boolean? depend
    String? debug
    String coords_file
  }
  command <<<
    nucmerAnnotate \
      ~{coords_file} \
      ~{if defined(ignore) then ("-ignore " +  '"' + ignore + '"') else ""} \
      ~{true="-all" false="" all} \
      ~{true="-loose" false="" loose} \
      ~{true="-noid" false="" no_id} \
      ~{true="-V" false="" version_print_version} \
      ~{true="-depend" false="" depend} \
      ~{if defined(debug) then ("-debug " +  '"' + debug + '"') else ""}
  >>>
  parameter_meta {
    ignore: "- Maximum length of the end sequence unaligned (Default: 20 bp)"
    all: "- Display all alignments (Default: only the annotated ones)"
    loose: "- Looser annotation"
    no_id: "- Filter out identity alignments (sequences with the same id)     "
    version_print_version: "|version      - Print the version and exit;"
    depend: "- Print the program and database dependency list;"
    debug: "- Set the debug <level> (0, non-debug by default); "
    coords_file: ""
  }
}