version 1.0

task SpaTyper {
  input {
    File? repeat_file
    File? repeat_order_file
    Directory? folder
    Array[String] fast_a
    String? glob
    Boolean? do_enrich
    File? provide_name_output
    Boolean? debug
    Boolean? info
    String out
  }
  command <<<
    spaTyper \
      ~{out} \
      ~{if defined(repeat_file) then ("--repeat_file " +  '"' + repeat_file + '"') else ""} \
      ~{if defined(repeat_order_file) then ("--repeat_order_file " +  '"' + repeat_order_file + '"') else ""} \
      ~{if defined(folder) then ("--folder " +  '"' + folder + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(glob) then ("--glob " +  '"' + glob + '"') else ""} \
      ~{if (do_enrich) then "--do_enrich" else ""} \
      ~{if defined(provide_name_output) then ("--output " +  '"' + provide_name_output + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (info) then "--info" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/spatyper:0.3.3--py_0"
  }
  parameter_meta {
    repeat_file: "List of spa repeats\\n(http://spa.ridom.de/dynamic/sparepeats.fasta)"
    repeat_order_file: "List spa types and order of repeats\\n(http://spa.ridom.de/dynamic/spatypes.txt)"
    folder: "Folder to save downloaded files from Ridom/Spa server"
    fast_a: "List of one or more fasta files."
    glob: "Uses unix style pathname expansion to run spa typing\\non all files. If your shell autoexpands wildcards use\\n-f."
    do_enrich: "Do PCR product enrichment. [Default: False]"
    provide_name_output: "Provide a name for the output file. Default: Standard"
    debug: "Developer messages"
    info: "Prints additional information"
    out: "--version             show program's version number and exit"
  }
  output {
    File out_stdout = stdout()
    File out_provide_name_output = "${in_provide_name_output}"
  }
}