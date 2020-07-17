version 1.0

task KrakenBiom {
  input {
    String? max
    String? min
    String? output_fp
    String? otu_fp
    String? fmt
    Boolean? gzip
    Boolean? verbose
    String kraken_reports
  }
  command <<<
    kraken-biom \
      ~{kraken_reports} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(output_fp) then ("--output_fp " +  '"' + output_fp + '"') else ""} \
      ~{if defined(otu_fp) then ("--otu_fp " +  '"' + otu_fp + '"') else ""} \
      ~{if defined(fmt) then ("--fmt " +  '"' + fmt + '"') else ""} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    max: "Assigned reads will be recorded only if they are at or below max rank. Default: O."
    min: "Reads assigned at and below min rank will be recorded as being assigned to the min rank level. Default: S."
    output_fp: "Path to the BIOM-format file. By default, the table will be in the HDF5 BIOM 2.x format. Users can output to a different format using the --fmt option. The output can also be gzipped using the --gzip option. Default path is: ./table.biom"
    otu_fp: "Create a file containing just the (NCBI) OTU IDs for use with a service such as phyloT (http://phylot.biobyte.de/) to generate a phylogenetic tree for use in downstream analysis such as UniFrac, iTol (itol.embl.de), or PhyloToAST (phylotoast.org)."
    fmt: "Set the output format of the BIOM table. Default is HDF5."
    gzip: "Compress the output BIOM table with gzip. HDF5 BIOM (v2.x) files are internally compressed by default, so this option is not needed when specifying --fmt hdf5."
    verbose: "Prints status messages during program execution."
    kraken_reports: "Results files from the kraken-report tool."
  }
}