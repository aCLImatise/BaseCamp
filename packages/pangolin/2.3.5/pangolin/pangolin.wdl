version 1.0

task Pangolin {
  input {
    Directory? outdir
    File? outfile
    Boolean? alignment
    Directory? datadir
    String? tempdir
    Boolean? no_temp
    Boolean? decompress_model
    Int? max_am_big
    Int? min_length
    Boolean? pan_guilin
    Boolean? verbose
    Int? threads
    Boolean? pango_learn_version
    Boolean? update
    String query
  }
  command <<<
    pangolin \
      ~{query} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (alignment) then "--alignment" else ""} \
      ~{if defined(datadir) then ("--datadir " +  '"' + datadir + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{if (no_temp) then "--no-temp" else ""} \
      ~{if (decompress_model) then "--decompress-model" else ""} \
      ~{if defined(max_am_big) then ("--max-ambig " +  '"' + max_am_big + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if (pan_guilin) then "--panGUIlin" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (pango_learn_version) then "--pangoLEARN-version" else ""} \
      ~{if (update) then "--update" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pangolin:2.3.5--py_0"
  }
  parameter_meta {
    outdir: "Output directory. Default: current working directory"
    outfile: "Optional output file name. Default: lineage_report.csv"
    alignment: "Optional alignment output."
    datadir: "Data directory minimally containing a fasta alignment\\nand guide tree"
    tempdir: "Specify where you want the temp stuff to go. Default:\\n$TMPDIR"
    no_temp: "Output all intermediate files, for dev purposes."
    decompress_model: "Permanently decompress the model file to save time\\nrunning pangolin."
    max_am_big: "Maximum proportion of Ns allowed for pangolin to\\nattempt assignment. Default: 0.5"
    min_length: "Minimum query length allowed for pangolin to attempt\\nassignment. Default: 10000"
    pan_guilin: "Run web-app version of pangolin"
    verbose: "Print lots of stuff to screen"
    threads: "Number of threads"
    pango_learn_version: "show pangoLEARN's version number and exit"
    update: "Automatically updates to latest release of pangolin\\nand pangoLEARN, then exits\\n"
    query: "Query fasta file of sequences to analyse."
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_outfile = "${in_outfile}"
  }
}