version 1.0

task Readextractor {
  input {
    Boolean? input_daa_andor
    File? output_files_use
    Boolean? classification
    Boolean? class_names
    Boolean? all
    Boolean? ignore_exceptions
    Directory? gzip_output_files
    Boolean? verbose
    String commands
  }
  command <<<
    read_extractor \
      ~{commands} \
      ~{if (input_daa_andor) then "--input" else ""} \
      ~{if (output_files_use) then "--output" else ""} \
      ~{if (classification) then "--classification" else ""} \
      ~{if (class_names) then "--classNames" else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if (ignore_exceptions) then "--ignoreExceptions" else ""} \
      ~{if (gzip_output_files) then "--gzipOutputFiles" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megan:6.21.2--h9ee0642_0"
  }
  parameter_meta {
    input_daa_andor: "[string(s)]              Input DAA and/or RMA file(s). Mandatory option."
    output_files_use: "[string(s)]             Output file(s). Use %t for class name and %i for class id. (Directory, stdout, .gz ok). Default value(s): 'stdout'."
    classification: "[string]        The classification to use.  Legal values: EC, EGGNOG, GTDB, INTERPRO2GO, KEGG, SEED, Taxonomy"
    class_names: "[string(s)]         Names (or ids) of classes to extract reads from (default: extract all classes)."
    all: "Extract all reads (not by class). Default value: false."
    ignore_exceptions: "Ignore exceptions and continue processing. Default value: false."
    gzip_output_files: "If output directory is given, gzip files written to directory. Default value: true."
    verbose: "Echo commandline options and be verbose. Default value: false."
    commands: "-fsc, --frameShiftCorrect            Extract frame-shift corrected reads. Default value: false."
  }
  output {
    File out_stdout = stdout()
    File out_output_files_use = "${in_output_files_use}"
    Directory out_gzip_output_files = "${in_gzip_output_files}"
  }
}