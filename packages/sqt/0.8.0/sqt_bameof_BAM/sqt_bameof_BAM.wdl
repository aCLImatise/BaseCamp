version 1.0

task SqtBameofBAM {
  input {
    String align
    Int bam_two_fast_q
    String fast_xmod
    String q_gram_freq
    String chars
    String fast_agrep
    File file_dot
    String random_seq
    String sam_se_top
    String bame_of
    String read_len_histo
    String cut_vect
  }
  command <<<
    sqt bameof BAM \
      ~{align} \
      ~{bam_two_fast_q} \
      ~{fast_xmod} \
      ~{q_gram_freq} \
      ~{chars} \
      ~{fast_agrep} \
      ~{file_dot} \
      ~{random_seq} \
      ~{sam_se_top} \
      ~{bame_of} \
      ~{read_len_histo} \
      ~{cut_vect}
  >>>
  parameter_meta {
    align: "Compare two strings"
    bam_two_fast_q: "Extract all reads from a BAM file that map to a\\ncertain location, but try hard"
    fast_xmod: "Modify FASTA and FASTQ files by picking subsets and\\nmodifying individual entries."
    q_gram_freq: "Print q-gram (also called k-mer) frequencies in a\\nFASTA or FASTQ file."
    chars: "Print the number of characters in a string."
    fast_agrep: "Search for a IUPAC string in the sequences of a FASTA"
    file_dot: "readcov             Print a report for individual reads in a SAM/BAM file."
    random_seq: "Generate random sequences in FASTA format"
    sam_se_top: "Perform set operation on two SAM/BAM files."
    bame_of: "Check whether the EOF marker is present in BAM files."
    read_len_histo: "Print and optionally plot a read length histogram of\\none or more FASTA or FASTQ"
    cut_vect: "Remove vector sequence"
  }
  output {
    File out_stdout = stdout()
  }
}