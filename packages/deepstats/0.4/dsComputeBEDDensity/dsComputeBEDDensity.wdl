version 1.0

task DsComputeBEDDensity {
  input {
    Array[String] bed_files_features
    File? chrom_size
    Int? window_size
    Array[String] bedgraph_files_output
    Int file_two_dot_bed
    Int file_two
  }
  command <<<
    dsComputeBEDDensity \
      ~{file_two_dot_bed} \
      ~{file_two} \
      ~{if defined(bed_files_features) then ("--input " +  '"' + bed_files_features + '"') else ""} \
      ~{if defined(chrom_size) then ("--chromSize " +  '"' + chrom_size + '"') else ""} \
      ~{if defined(window_size) then ("--windowSize " +  '"' + window_size + '"') else ""} \
      ~{if defined(bedgraph_files_output) then ("--output " +  '"' + bedgraph_files_output + '"') else ""}
  >>>
  parameter_meta {
    bed_files_features: "BED files from which features density will be\\ncalculated."
    chrom_size: "A 2 columns tab-delimited file containing chromosome\\nsizes, with one chromosome per line."
    window_size: "Size of the window used to binify the genome and\\ncalculate bed files density. Default: 1000."
    bedgraph_files_output: "bedGraph file(s) output prefix name(s) ('.bedGraph' is\\nautomatically added at the end of the given prefix,\\none bedGraph per input file).\\n"
    file_two_dot_bed: ""
    file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}