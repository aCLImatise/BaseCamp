version 1.0

task Novolrpolish {
  input {
    String? in
    Boolean? lb_short
    Boolean? lb_long
    File? out
    String? region
    String? fast_a
    Boolean? fq
    String? base_q
    String? min_q
    String? min_mapq
    String novo_craft
    String long
    String read
    String polisher
    String? format_specific
  }
  command <<<
    novolrpolish \
      ~{novo_craft} \
      ~{long} \
      ~{read} \
      ~{polisher} \
      ~{format_specific} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{true="-LBShort" false="" lb_short} \
      ~{true="-LBLong" false="" lb_long} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(region) then ("-region " +  '"' + region + '"') else ""} \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="-fq" false="" fq} \
      ~{if defined(base_q) then ("-baseq " +  '"' + base_q + '"') else ""} \
      ~{if defined(min_q) then ("-minq " +  '"' + min_q + '"') else ""} \
      ~{if defined(min_mapq) then ("-minMAPQ " +  '"' + min_mapq + '"') else ""}
  >>>
  parameter_meta {
    in: "the input BAM file [stdin]"
    lb_short: "<Library ID's for short  identifies the libraries that contain short reads (e.g. Illumina) []"
    lb_long: "<Library ID's for long si identifies the libraries with long single molecule reads []"
    out: "the output file as alternative to stdout. [stdout]"
    region: "genomic region (chr:99..[chr:]999). Index file is recommended for better performance, and is used automatically if it exists. See 'bamtools help index' for more details on creating one"
    fast_a: "The contigs to be polished."
    fq: "Output is in FASTQ, Default is FASTA format."
    base_q: "Assumed phred scaled base quality for fasta input. [30]"
    min_q: "Minimum quality for a correction. [30]"
    min_mapq: "Minimum MAPQ for using a read in pileup. [2]"
    novo_craft: ""
    long: ""
    read: ""
    polisher: ""
    format_specific: ""
  }
}