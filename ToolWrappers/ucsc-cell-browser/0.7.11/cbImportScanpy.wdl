version 1.0

task CbImportScanpy {
  input {
    Boolean? debug
    File? in_file
    Boolean? proc
    Directory? outdir
    String? name
    String? only_convert_toconvert
    String? port
    String _markerfieldmarkerfield
    String rank_genes_groups
    String others
  }
  command <<<
    cbImportScanpy \
      ~{_markerfieldmarkerfield} \
      ~{rank_genes_groups} \
      ~{others} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(in_file) then ("--inFile " +  '"' + in_file + '"') else ""} \
      ~{if (proc) then "--proc" else ""} \
      ~{if defined(outdir) then ("--outDir " +  '"' + outdir + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(only_convert_toconvert) then ("--htmlDir " +  '"' + only_convert_toconvert + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""}
  >>>
  parameter_meta {
    debug: "show debug messages"
    in_file: "input .h5ad file. Required parameter"
    proc: "when exporting, do not use the raw input data, instead\\nuse the normalized and corrected matrix scanpy. This\\nhas no effect if the anndata.raw attribute is not used\\nin the anndata object"
    outdir: "Output directory. Required parameter"
    name: "Dataset name for generated cellbrowser.conf. If not\\nspecified, the last component of -o will be used."
    only_convert_toconvert: "do not only convert to tab-sep files but also run\\ncbBuild toconvert the data and add the dataset under\\nhtmlDir"
    port: "only with --htmlDir: start webserver on port to serve"
    _markerfieldmarkerfield: "--markerField=MARKERFIELD"
    rank_genes_groups: "--clusterField=CLUSTERFIELD"
    others: "-m, --skipMatrix      do not convert the matrix, saves time if the same one"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}