version 1.0

task Hypo {
  input {
    Int? reads_short
    Int? bam_lr
    String args
  }
  command <<<
    hypo \
      ~{args} \
      ~{if defined(reads_short) then ("--reads-short " +  '"' + reads_short + '"') else ""} \
      ~{if defined(bam_lr) then ("--bam-lr " +  '"' + bam_lr + '"') else ""}
  >>>
  parameter_meta {
    reads_short: "Input file name containing reads (in fasta/fastq format; can be compressed). A list of files containing file names in each line can be passed with @ prefix.\\n-d, --draft <str>\\nInput file name containing the draft contigs (in fasta/fastq format; can be compressed).\\n-b, --bam-sr <str>\\nInput file name containing the alignments of short reads against the draft (in bam/sam format; must have CIGAR information).\\n-c, --coverage-short <int>\\nApproximate mean coverage of the short reads.\\n-s, --size-ref <str>\\nApproximate size of the genome (a number; could be followed by units k/m/g; e.g. 10m, 2.3g)."
    bam_lr: "Input file name containing the alignments of long reads against the draft (in bam/sam format; must have CIGAR information).\\n[Only Short reads polishing will be performed if this argument is not given]\\n-o, --output <str>\\nOutput file name.\\n[Default] hypo_<draft_file_name>.fasta in the working directory.\\n-t, --threads <int>\\nNumber of threads.\\n[Default] 1.\\n-p, --processing-size <int>\\nNumber of contigs to be processed in one batch. Lower value means less memory usage but slower speed.\\n[Default] All the contigs in the draft.\\n-k, --kind-sr <str>\\nKind of the short reads.\\n[Valid Values]\\nsr      (Corresponding to NGS reads like Illumina reads)\\nccs     (Corresponding to HiFi reads like PacBio CCS reads)\\n[Default] sr.\\n-m, --match-sr <int>\\nScore for matching bases for short reads.\\n[Default] 5.\\n-x, --mismatch-sr <int>\\nScore for mismatching bases for short reads.\\n[Default] -4.\\n-g, --gap-sr <int>\\nGap penalty for short reads (must be negative).\\n[Default] -8.\\n-M, --match-lr <int>\\nScore for matching bases for long reads.\\n[Default] 3.\\n-X, --mismatch-lr <int>\\nScore for mismatching bases for long reads.\\n[Default] -5.\\n-G, --gap-lr <int>\\nGap penalty for long reads (must be negative).\\n[Default] -4.\\n-n, --ned-th <int>\\nThreshold for Normalised Edit Distance of long arms allowed in a window (in %). Higher number means more arms allowed which may slow down the execution.\\n[Default] 20.\\n-q, --qual-map-th <int>\\nThreshold for mapping quality of reads. The reads with mapping quality below this threshold will not be taken into consideration.\\n[Default] 2.\\n-i, --intermed\\nStore or use (if already exist) the intermediate files.\\n[Currently, only Solid kmers are stored as an intermediate file.].\\n-h, --help\\nPrint the usage.\\n"
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}