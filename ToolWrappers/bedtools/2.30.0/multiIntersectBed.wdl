version 1.0

task MultiIntersectBed {
  input {
    Boolean? cluster
    Boolean? header
    Boolean? names
    Boolean? use_genome_file
    Boolean? empty
    Int? filler
    Boolean? examples
    Array[File] i
    String bed_tools
    String multi_inter
  }
  command <<<
    multiIntersectBed \
      ~{bed_tools} \
      ~{multi_inter} \
      ~{if (cluster) then "-cluster" else ""} \
      ~{if (header) then "-header" else ""} \
      ~{if (names) then "-names" else ""} \
      ~{if (use_genome_file) then "-g" else ""} \
      ~{if (empty) then "-empty" else ""} \
      ~{if defined(filler) then ("-filler " +  '"' + filler + '"') else ""} \
      ~{if (examples) then "-examples" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0"
  }
  parameter_meta {
    cluster: "Invoke Ryan Layers's clustering algorithm."
    header: "Print a header line.\\n(chrom/start/end + names of each file)."
    names: "A list of names (one/file) to describe each file in -i.\\nThese names will be printed in the header line."
    use_genome_file: "Use genome file to calculate empty regions.\\n- STRING."
    empty: "Report empty regions (i.e., start/end intervals w/o\\nvalues in all files).\\n- Requires the '-g FILE' parameter."
    filler: "Use TEXT when representing intervals having no value.\\n- Default is '0', but you can use 'N/A' or any text."
    examples: "Show detailed usage examples."
    i: ""
    bed_tools: ""
    multi_inter: ""
  }
  output {
    File out_stdout = stdout()
  }
}