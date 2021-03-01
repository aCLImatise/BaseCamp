version 1.0

task Bamtools241Random {
  input {
    File? in
    File? list
    File? out
    File? region
    Boolean? force_compression
    Int? number_alignments_grabnote
    Int? seed
    String bam_tools
    String random
  }
  command <<<
    bamtools_2_4_1 random \
      ~{bam_tools} \
      ~{random} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(region) then ("-region " +  '"' + region + '"') else ""} \
      ~{if (force_compression) then "-forceCompression" else ""} \
      ~{if defined(number_alignments_grabnote) then ("-n " +  '"' + number_alignments_grabnote + '"') else ""} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "the input BAM file [stdin]"
    list: "the input BAM file list, one\\nline per file"
    out: "the output BAM file [stdout]"
    region: "only pull random alignments\\nfrom within this genomic region. Index\\nfile is recommended for better\\nperformance, and is used automatically if\\nit exists. See 'bamtools help index' for\\nmore details on creating one"
    force_compression: "if results are sent to stdout\\n(like when piping to another tool),\\ndefault behavior is to leave output\\nuncompressed. Use this flag to override\\nand force compression"
    number_alignments_grabnote: "number of alignments to grab.\\nNote - no duplicate checking is performed\\n[10000]"
    seed: "random number generator seed\\n(for repeatable results). Current time is\\nused if no seed value is provided."
    bam_tools: ""
    random: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}