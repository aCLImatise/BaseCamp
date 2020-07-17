version 1.0

task Novolrcorrector {
  input {
    String? in
    File? out
    String? region
    String? fast_a
    String? use
    String? at_least
    String? at_most
    String? min_cover
    String? se_penalty
    Boolean? full_lr
    Boolean? sv_split
    Boolean? uncorrected_lr
    Boolean? fq
    String? base_q
    String novo_craft
    String long
    String read
    String correct_or
    String? format_specific
  }
  command <<<
    novolrcorrector \
      ~{novo_craft} \
      ~{long} \
      ~{read} \
      ~{correct_or} \
      ~{format_specific} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(region) then ("-region " +  '"' + region + '"') else ""} \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(use) then ("-use " +  '"' + use + '"') else ""} \
      ~{if defined(at_least) then ("-atLeast " +  '"' + at_least + '"') else ""} \
      ~{if defined(at_most) then ("-atMost " +  '"' + at_most + '"') else ""} \
      ~{if defined(min_cover) then ("-minCover " +  '"' + min_cover + '"') else ""} \
      ~{if defined(se_penalty) then ("-sePenalty " +  '"' + se_penalty + '"') else ""} \
      ~{true="-fullLR" false="" full_lr} \
      ~{true="-SVSplit" false="" sv_split} \
      ~{true="-uncorrectedLR" false="" uncorrected_lr} \
      ~{true="-fq" false="" fq} \
      ~{if defined(base_q) then ("-baseq " +  '"' + base_q + '"') else ""}
  >>>
  parameter_meta {
    in: "the input BAM file [stdin]"
    out: "the output file as alternative to stdout. [stdout]"
    region: "genomic region (chr:99..[chr:]999). Index file is recommended for better performance, and is used automatically if it exists. See 'bamtools help index' for more details on creating one"
    fast_a: "Original Pacbio FASTA reads file as used in alignment process."
    use: "Fraction of alignments to use when calling a consensus base. Chooses the alignments with the lowest Alignment Score plus Single End Penalty. [0.3300]"
    at_least: "Use at least this many alignments if fraction rule would use less alignments. [4]"
    at_most: "Don't use more this many alignments even if fraction rule would use more alignments. [50]"
    min_cover: "Only correct if we have at least this many alignments. [2]"
    se_penalty: "Penalty applied to improper pairs and single end reads when ranking alignments. [70]"
    full_lr: "Output full length of Long Read read including uncorrected bases. Default trims uncorrected ends of reads."
    sv_split: "Split Reads at locii not covered by a proper pair. Default is not to split the reads."
    uncorrected_lr: "Output all Long Reads including those with no alignments. Default is to skip output of reads with no alignments."
    fq: "Output is in FASTQ, Default is FASTA format."
    base_q: "Assumed phred scaled base quality for input fasta. [10]"
    novo_craft: ""
    long: ""
    read: ""
    correct_or: ""
    format_specific: ""
  }
}