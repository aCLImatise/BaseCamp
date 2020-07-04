version 1.0

task BedtoolsMultiinter {
  input {
    Boolean? cluster
    Boolean? header
    Boolean? names
    Boolean? use_genome_file
    Boolean? empty
    String? filler
    Boolean? examples
    Array[File] i
  }
  command <<<
    bedtools multiinter \
      ~{true="-cluster" false="" cluster} \
      ~{true="-header" false="" header} \
      ~{true="-names" false="" names} \
      ~{true="-g" false="" use_genome_file} \
      ~{true="-empty" false="" empty} \
      ~{if defined(filler) then ("-filler " +  '"' + filler + '"') else ""} \
      ~{true="-examples" false="" examples} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    cluster: "Invoke Ryan Layers's clustering algorithm."
    header: "Print a header line. (chrom/start/end + names of each file)."
    names: "A list of names (one/file) to describe each file in -i. These names will be printed in the header line."
    use_genome_file: "Use genome file to calculate empty regions. - STRING."
    empty: "Report empty regions (i.e., start/end intervals w/o values in all files). - Requires the '-g FILE' parameter."
    filler: "Use TEXT when representing intervals having no value. - Default is '0', but you can use 'N/A' or any text."
    examples: "Show detailed usage examples."
    i: ""
  }
}