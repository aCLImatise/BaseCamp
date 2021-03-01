version 1.0

task Krakenbiom {
  input {
    String? max
    String? min
    File? output_fp
    File? otu_fp
    String? fmt
    Boolean? gzip
    Boolean? verbose
    String kraken_reports
  }
  command <<<
    kraken_biom \
      ~{kraken_reports} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(output_fp) then ("--output_fp " +  '"' + output_fp + '"') else ""} \
      ~{if defined(otu_fp) then ("--otu_fp " +  '"' + otu_fp + '"') else ""} \
      ~{if defined(fmt) then ("--fmt " +  '"' + fmt + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max: "Assigned reads will be recorded only if they are at or\\nbelow max rank. Default: O."
    min: "Reads assigned at and below min rank will be recorded\\nas being assigned to the min rank level. Default: S."
    output_fp: "Path to the BIOM-format file. By default, the table\\nwill be in the HDF5 BIOM 2.x format. Users can output\\nto a different format using the --fmt option. The\\noutput can also be gzipped using the --gzip option.\\nDefault path is: ./table.biom"
    otu_fp: "Create a file containing just the (NCBI) OTU IDs for\\nuse with a service such as phyloT\\n(http://phylot.biobyte.de/) to generate a phylogenetic\\ntree for use in downstream analysis such as UniFrac,\\niTol (itol.embl.de), or PhyloToAST (phylotoast.org)."
    fmt: "Set the output format of the BIOM table. Default is\\nHDF5."
    gzip: "Compress the output BIOM table with gzip. HDF5 BIOM\\n(v2.x) files are internally compressed by default, so\\nthis option is not needed when specifying --fmt hdf5."
    verbose: "Prints status messages during program execution."
    kraken_reports: "Results files from the kraken-report tool."
  }
  output {
    File out_stdout = stdout()
    File out_output_fp = "${in_output_fp}"
  }
}