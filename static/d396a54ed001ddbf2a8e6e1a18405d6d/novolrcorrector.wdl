version 1.0

task Novolrcorrector {
  input {
    File? in
    File? out
    File? region
    File? fast_a
    Int? use
    Int? at_least
    Int? at_most
    Int? min_cover
    Int? se_penalty
    Boolean? full_lr
    Boolean? sv_split
    Boolean? uncorrected_lr
    Boolean? fq
    Int? base_q
  }
  command <<<
    novolrcorrector \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(region) then ("-region " +  '"' + region + '"') else ""} \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(use) then ("-use " +  '"' + use + '"') else ""} \
      ~{if defined(at_least) then ("-atLeast " +  '"' + at_least + '"') else ""} \
      ~{if defined(at_most) then ("-atMost " +  '"' + at_most + '"') else ""} \
      ~{if defined(min_cover) then ("-minCover " +  '"' + min_cover + '"') else ""} \
      ~{if defined(se_penalty) then ("-sePenalty " +  '"' + se_penalty + '"') else ""} \
      ~{if (full_lr) then "-fullLR" else ""} \
      ~{if (sv_split) then "-SVSplit" else ""} \
      ~{if (uncorrected_lr) then "-uncorrectedLR" else ""} \
      ~{if (fq) then "-fq" else ""} \
      ~{if defined(base_q) then ("-baseq " +  '"' + base_q + '"') else ""}
  >>>
  parameter_meta {
    in: "the input BAM file [stdin]"
    out: "the output file as alternative\\nto stdout. [stdout]"
    region: "genomic region\\n(chr:99..[chr:]999). Index file is\\nrecommended for better performance, and is\\nused automatically if it exists. See\\n'bamtools help index' for more details on\\ncreating one"
    fast_a: "Original Pacbio FASTA reads\\nfile as used in alignment process."
    use: "Fraction of alignments to use\\nwhen calling a consensus base. Chooses the\\nalignments with the lowest Alignment Score\\nplus Single End Penalty. [0.3300]"
    at_least: "Use at least this many\\nalignments if fraction rule would use less\\nalignments. [4]"
    at_most: "Don't use more this many\\nalignments even if fraction rule would use\\nmore alignments. [50]"
    min_cover: "Only correct if we have at\\nleast this many alignments. [2]"
    se_penalty: "Penalty applied to improper\\npairs and single end reads when ranking\\nalignments. [70]"
    full_lr: "Output full length of Long\\nRead read including uncorrected bases.\\nDefault trims uncorrected ends of reads."
    sv_split: "Split Reads at locii not\\ncovered by a proper pair. Default is not\\nto split the reads."
    uncorrected_lr: "Output all Long Reads\\nincluding those with no alignments.\\nDefault is to skip output of reads with no\\nalignments."
    fq: "Output is in FASTQ, Default is\\nFASTA format."
    base_q: "Assumed phred scaled base\\nquality for input fasta. [10]"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}