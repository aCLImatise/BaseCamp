version 1.0

task Novolrpolish {
  input {
    File? in
    Boolean? lb_short
    Boolean? lb_long
    File? out
    File? region
    File? fast_a
    Boolean? fq
    Int? base_q
    Int? min_q
    Int? min_mapq
  }
  command <<<
    novolrpolish \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if (lb_short) then "-LBShort" else ""} \
      ~{if (lb_long) then "-LBLong" else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(region) then ("-region " +  '"' + region + '"') else ""} \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (fq) then "-fq" else ""} \
      ~{if defined(base_q) then ("-baseq " +  '"' + base_q + '"') else ""} \
      ~{if defined(min_q) then ("-minq " +  '"' + min_q + '"') else ""} \
      ~{if defined(min_mapq) then ("-minMAPQ " +  '"' + min_mapq + '"') else ""}
  >>>
  parameter_meta {
    in: "the input BAM file [stdin]"
    lb_short: "<Library ID's for short  identifies the libraries that\\ncontain short reads (e.g. Illumina) []"
    lb_long: "<Library ID's for long si identifies the libraries with\\nlong single molecule reads []"
    out: "the output file as alternative\\nto stdout. [stdout]"
    region: "genomic region\\n(chr:99..[chr:]999). Index file is\\nrecommended for better performance, and is\\nused automatically if it exists. See\\n'bamtools help index' for more details on\\ncreating one"
    fast_a: "The contigs to be polished."
    fq: "Output is in FASTQ, Default is\\nFASTA format."
    base_q: "Assumed phred scaled base\\nquality for fasta input. [30]"
    min_q: "Minimum quality for a\\ncorrection. [30]"
    min_mapq: "Minimum MAPQ for using a read\\nin pileup. [2]"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}