version 1.0

task PanarooQc {
  input {
    String? threads
    String? graph_type
    String? ref_db
    Array[String] input_gff_files
    String? out_dir
    String plot_pana_roo_qc
  }
  command <<<
    panaroo-qc \
      ~{plot_pana_roo_qc} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(graph_type) then ("--graph_type " +  '"' + graph_type + '"') else ""} \
      ~{if defined(ref_db) then ("--ref_db " +  '"' + ref_db + '"') else ""} \
      ~{if defined(input_gff_files) then ("--input " +  '"' + input_gff_files + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""}
  >>>
  parameter_meta {
    threads: "number of threads to use (default=1)"
    graph_type: "the type of graph to generate (default='all')"
    ref_db: "reference mash database for contamination quantification."
    input_gff_files: "input GFF3 files (usually output from running Prokka)"
    out_dir: "location of an output directory"
    plot_pana_roo_qc: ""
  }
}