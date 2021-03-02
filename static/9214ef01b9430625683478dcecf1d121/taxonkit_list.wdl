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
  }
  command <<<
    taxonkit list \
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
    docker: "None"
  }
  parameter_meta {
    ids: "taxid(s), multiple values should be separated by comma"
    indent: "indent (default \\\"  \\\")"
    json: "output in JSON format. you can save the result in file with suffix \\\".json\\\" and open with modern text editor"
    show_name: "output scientific name"
    show_rank: "output rank"
    data_dir: "directory containing nodes.dmp and names.dmp (default \\\"/root/.taxonkit\\\")"
    line_buffered: "use line buffering on output, i.e., immediately writing to stdin/file for every line of output"
    out_file: "out file (\\\"-\\\" for stdout, suffix .gz for gzipped out) (default \\\"-\\\")"
    threads: "number of CPUs. 2 is enough (default value: 1 for single-CPU PC, 2 for others) (default 2)"
    verbose: "print verbose information"
  }
  output {
    File out_stdout = stdout()
    File out_json = "${in_json}"
    File out_line_buffered = "${in_line_buffered}"
    File out_out_file = "${in_out_file}"
  }
}