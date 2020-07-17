version 1.0

task SVmerge {
  input {
    Boolean? prefix
    Boolean? variants
    Boolean? f_of
    Boolean? max_dist
    Boolean? variant_delimiter
    String? ref
  }
  command <<<
    SVmerge \
      ~{true="--prefix" false="" prefix} \
      ~{true="--variants" false="" variants} \
      ~{true="--fof" false="" f_of} \
      ~{true="--maxdist" false="" max_dist} \
      ~{true="--variantdelimiter" false="" variant_delimiter} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  parameter_meta {
    prefix: "Specify a prefix to be used to create output file names: files of distance metric values will be named \"prefix.distances\" and the output, clustered VCF file will be named \"prefix.clustered.vcf\"."
    variants: "Specify the path to a VCF file of variants to merge. These variants will be considered in combination with any specified using the --fof option."
    f_of: "Specify the path to a file of files with paths to VCF files of variants to merge. These variants will be considered in combination with any specified using the --variants option."
    max_dist: "Specify the maximum distance in bases between the positions of SVs that can be merged."
    variant_delimiter: "Specify the ASCII character to be used as a delimiter when forming clusters. This must be a character that is not contained in any of the cluster IDs in order for SVmerge to give reliable results."
    ref: ""
  }
}