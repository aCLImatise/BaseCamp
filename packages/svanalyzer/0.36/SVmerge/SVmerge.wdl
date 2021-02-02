version 1.0

task SVmerge {
  input {
    File? prefix
    Boolean? variants
    Boolean? f_of
    Boolean? max_dist
    Boolean? variant_delimiter
    File? distance_file
    File? ref
  }
  command <<<
    SVmerge \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (variants) then "--variants" else ""} \
      ~{if (f_of) then "--fof" else ""} \
      ~{if (max_dist) then "--maxdist" else ""} \
      ~{if (variant_delimiter) then "--variantdelimiter" else ""} \
      ~{if defined(distance_file) then ("--distance_file " +  '"' + distance_file + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  parameter_meta {
    prefix: "Specify a prefix to be used to create output file names: files of\\ndistance metric values will be named \\\"prefix.distances\\\" and the\\noutput, clustered VCF file will be named \\\"prefix.clustered.vcf\\\"."
    variants: "Specify the path to a VCF file of variants to merge. These variants\\nwill be considered in combination with any specified using the --fof\\noption."
    f_of: "Specify the path to a file of files with paths to VCF files of\\nvariants to merge. These variants will be considered in combination\\nwith any specified using the --variants option."
    max_dist: "Specify the maximum distance in bases between the positions of SVs\\nthat can be merged."
    variant_delimiter: "Specify the ASCII character to be used as a delimiter when forming\\nclusters. This must be a character that is not contained in any of\\nthe cluster IDs in order for SVmerge to give reliable results.\\n"
    distance_file: ""
    ref: ""
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}