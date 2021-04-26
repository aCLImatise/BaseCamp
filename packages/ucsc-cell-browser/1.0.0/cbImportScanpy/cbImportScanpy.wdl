version 1.0

task CbImportScanpy {
  input {
    Boolean? debug
    File? in_file
    Boolean? proc
    Directory? outdir
    String? name
    String? only_convert_tabsep
    String? port
    Boolean? skip_markers
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
      ~{if defined(only_convert_tabsep) then ("--htmlDir " +  '"' + only_convert_tabsep + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if (skip_markers) then "--skipMarkers" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ucsc-cell-browser:1.0.0--pyhdfd78af_0"
  }
  parameter_meta {
    debug: "show debug messages"
    in_file: "input .h5ad file. Required parameter"
    proc: "when exporting, do not use the raw input data, instead\\nuse the normalized and corrected matrix scanpy. This\\nhas no effect if the anndata.raw attribute is not used\\nin the anndata object"
    outdir: "Output directory. Required parameter"
    name: "Dataset name for generated cellbrowser.conf. If not\\nspecified, the last component of -o will be used."
    only_convert_tabsep: "do not only convert to tab-sep files but also run\\ncbBuild toconvert the data and add the dataset under\\nhtmlDir"
    port: "only with --htmlDir: start webserver on port to serve"
    skip_markers: "do not try to calculate cluster-specific marker genes.\\nOnly useful for the rare datasets where a bug in\\nscanpy crashes the marker gene calculation.\\n"
    _markerfieldmarkerfield: "--markerField=MARKERFIELD"
    rank_genes_groups: "--clusterField=CLUSTERFIELD"
    others: "-m, --skipMatrix      do not convert the matrix, saves time if the same one"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}