version 1.0

task TaxonkitList {
  input {
    String? ids
    String? indent
    File? json
    Boolean? show_name
    Boolean? show_rank
    Directory? data_dir
    File? line_buffered
    File? out_file
    Int? threads
    Boolean? verbose
    Int seven_fouroneone_five_eight
  }
  command <<<
    taxonkit list \
      ~{seven_fouroneone_five_eight} \
      ~{if defined(ids) then ("--ids " +  '"' + ids + '"') else ""} \
      ~{if defined(indent) then ("--indent " +  '"' + indent + '"') else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if (show_name) then "--show-name" else ""} \
      ~{if (show_rank) then "--show-rank" else ""} \
      ~{if defined(data_dir) then ("--data-dir " +  '"' + data_dir + '"') else ""} \
      ~{if (line_buffered) then "--line-buffered" else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/taxonkit:0.7.2--0"
  }
  parameter_meta {
    ids: "taxID(s), multiple values should be separated by comma"
    indent: "indent (default \\\"  \\\")"
    json: "output in JSON format. you can save the result in file with suffix \\\".json\\\" and open with modern text editor"
    show_name: "output scientific name"
    show_rank: "output rank"
    data_dir: "directory containing nodes.dmp and names.dmp (default \\\"/root/.taxonkit\\\")"
    line_buffered: "use line buffering on output, i.e., immediately writing to stdin/file for every line of output"
    out_file: "out file (\\\"-\\\" for stdout, suffix .gz for gzipped out) (default \\\"-\\\")"
    threads: "number of CPUs. 4 is enough (default 4)"
    verbose: "print verbose information"
    seven_fouroneone_five_eight: "Usage:"
  }
  output {
    File out_stdout = stdout()
    File out_json = "${in_json}"
    File out_line_buffered = "${in_line_buffered}"
    File out_out_file = "${in_out_file}"
  }
}