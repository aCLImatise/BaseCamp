version 1.0

task KbCount {
  input {
    Directory? tmp
    Boolean? keep_tmp
    Boolean? verbose
    File? kallis_to
    File? bus_tools
    File? path_output_directory
    File? path_file_correct
    Int? number_threads_use
    Int? maximum_memory_used
    Boolean? type_workflow_use
    Boolean? mm
    Boolean? tcc
    Boolean? filter
    File? overwrite
    Boolean? dry_run
    Boolean? laman_no
    Boolean? nucleus
    Boolean? loom
    Boolean? h_five_ad
    Boolean? cell_ranger
    Boolean? report
    File? path_kallisto_commadelimited
    Int? path_transcripttogene_mapping
    String? singlecell_technology_used
    Int? cone
    Int? c_two
    String fast_qs
  }
  command <<<
    kb count \
      ~{fast_qs} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if (keep_tmp) then "--keep-tmp" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(kallis_to) then ("--kallisto " +  '"' + kallis_to + '"') else ""} \
      ~{if defined(bus_tools) then ("--bustools " +  '"' + bus_tools + '"') else ""} \
      ~{if defined(path_output_directory) then ("-o " +  '"' + path_output_directory + '"') else ""} \
      ~{if defined(path_file_correct) then ("-w " +  '"' + path_file_correct + '"') else ""} \
      ~{if defined(number_threads_use) then ("-t " +  '"' + number_threads_use + '"') else ""} \
      ~{if defined(maximum_memory_used) then ("-m " +  '"' + maximum_memory_used + '"') else ""} \
      ~{if (type_workflow_use) then "--workflow" else ""} \
      ~{if (mm) then "--mm" else ""} \
      ~{if (tcc) then "--tcc" else ""} \
      ~{if (filter) then "--filter" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (laman_no) then "--lamanno" else ""} \
      ~{if (nucleus) then "--nucleus" else ""} \
      ~{if (loom) then "--loom" else ""} \
      ~{if (h_five_ad) then "--h5ad" else ""} \
      ~{if (cell_ranger) then "--cellranger" else ""} \
      ~{if (report) then "--report" else ""} \
      ~{if defined(path_kallisto_commadelimited) then ("-i " +  '"' + path_kallisto_commadelimited + '"') else ""} \
      ~{if defined(path_transcripttogene_mapping) then ("-g " +  '"' + path_transcripttogene_mapping + '"') else ""} \
      ~{if defined(singlecell_technology_used) then ("-x " +  '"' + singlecell_technology_used + '"') else ""} \
      ~{if defined(cone) then ("-c1 " +  '"' + cone + '"') else ""} \
      ~{if defined(c_two) then ("-c2 " +  '"' + c_two + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/kb-python:0.26.0--pyhdfd78af_0"
  }
  parameter_meta {
    tmp: "Override default temporary directory"
    keep_tmp: "Do not delete the tmp directory"
    verbose: "Print debugging information"
    kallis_to: "Path to kallisto binary to use (default: kallisto)"
    bus_tools: "Path to bustools binary to use (default: bustools)"
    path_output_directory: "Path to output directory (default: current directory)"
    path_file_correct: "Path to file of whitelisted barcodes to correct to. If\\nnot provided and bustools supports the technology, a\\npre-packaged whitelist is used. Otherwise, or if\\n'None', is provided, the bustools whitelist command is\\nused. (`kb --list` to view whitelists)"
    number_threads_use: "Number of threads to use (default: 8)"
    maximum_memory_used: "Maximum memory used (default: 4G)"
    type_workflow_use: "{standard,lamanno,nucleus,kite,kite:10xFB}\\nType of workflow. Use `lamanno` for RNA velocity based\\non La Manno et al. 2018 logic. Use `nucleus` for RNA\\nvelocity on single-nucleus RNA-seq reads. Use `kite`\\nfor feature barcoding. Use `kite:10xFB` for 10x\\nGenomics Feature Barcoding technology. (default:\\nstandard)"
    mm: "Include reads that pseudoalign to multiple genes."
    tcc: "Generate a TCC matrix instead of a gene count matrix."
    filter: "[{bustools}]\\nProduce a filtered gene count matrix (default:\\nbustools)"
    overwrite: "Overwrite existing output.bus file"
    dry_run: "Dry run"
    laman_no: "Deprecated. Use `--workflow lamanno` instead."
    nucleus: "Deprecated. Use `--workflow nucleus` instead."
    loom: "Generate loom file from count matrix"
    h_five_ad: "Generate h5ad file from count matrix"
    cell_ranger: "Convert count matrices to cellranger-compatible format"
    report: "Generate a HTML report containing run statistics and\\nbasic plots. Using this option may cause kb to use\\nmore memory than specified with the `-m` option. It\\nmay also cause it to crash due to memory."
    path_kallisto_commadelimited: "Path to kallisto index/indices, comma-delimited"
    path_transcripttogene_mapping: "Path to transcript-to-gene mapping"
    singlecell_technology_used: "Single-cell technology used (`kb --list` to view)"
    cone: "Path to cDNA transcripts-to-capture"
    c_two: "Path to intron transcripts-to-captured"
    fast_qs: "FASTQ files. For technology `SMARTSEQ`, all input\\nFASTQs are alphabetically sorted by path and paired in\\norder, and cell IDs are assigned as incrementing\\nintegers starting from zero. A single batch TSV with\\ncell ID, read 1, and read 2 as columns can be provided\\nto override this behavior."
  }
  output {
    File out_stdout = stdout()
    File out_path_output_directory = "${in_path_output_directory}"
    File out_overwrite = "${in_overwrite}"
  }
}