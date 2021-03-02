version 1.0

task Shigeifinder {
  input {
    Array[String] string_pathtoinputdata
    Boolean? add_flag_is
    Int? number_threads_default
    Boolean? hits
    Boolean? d_ratio
    Boolean? update_db
    File? output_file_write
    Boolean? check
    String or
  }
  command <<<
    shigeifinder \
      ~{or} \
      ~{if defined(string_pathtoinputdata) then ("-i " +  '"' + string_pathtoinputdata + '"') else ""} \
      ~{if (add_flag_is) then "-r" else ""} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""} \
      ~{if (hits) then "--hits" else ""} \
      ~{if (d_ratio) then "--dratio" else ""} \
      ~{if (update_db) then "--update_db" else ""} \
      ~{if defined(output_file_write) then ("--output " +  '"' + output_file_write + '"') else ""} \
      ~{if (check) then "--check" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/shigeifinder:1.2.0--py_0"
  }
  parameter_meta {
    string_pathtoinputdata: "<string>: path/to/input_data"
    add_flag_is: "Add flag if file is raw reads."
    number_threads_default: "number of threads. Default 4."
    hits: "To show the blast/alignment hits"
    d_ratio: "To show the depth ratios of cluster-specific genes to House\\nKeeping genes"
    update_db: "Add flag if you added new sequences to genes database."
    output_file_write: "output file to write to (if not used writes to stdout)"
    check: "To show the blast/alignment hits"
    or: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_write = "${in_output_file_write}"
  }
}