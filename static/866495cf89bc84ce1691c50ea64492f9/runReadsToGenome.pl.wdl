version 1.0

task RunReadsToGenomepl {
  input {
    Boolean? spaceseparated_pairedend_reads
    Boolean? sequencefileprovides_file_containing
    Boolean? long
    Boolean? pac_bio
    Boolean? ref
    Boolean? pre
    Directory? output_directory
    Boolean? consensus
    Boolean? aligner
    Int? bwa_options
    Int? bowtie_options
    Boolean? snap_options
    Boolean? minimap_two_options
    Boolean? skip_aln
    Boolean? no_plot
    Boolean? no_snp
    Boolean? debug
    Boolean? cpu
    Int? min_in_del_candidate_depth
    Boolean? min_alt_bases
    Boolean? max_depth
    Boolean? min_depth
    Boolean? snp_gap_filter
    String perl
  }
  command <<<
    runReadsToGenome_pl \
      ~{perl} \
      ~{if (spaceseparated_pairedend_reads) then "-p" else ""} \
      ~{if (sequencefileprovides_file_containing) then "-u" else ""} \
      ~{if (long) then "-long" else ""} \
      ~{if (pac_bio) then "--pacbio" else ""} \
      ~{if (ref) then "-ref" else ""} \
      ~{if (pre) then "-pre" else ""} \
      ~{if (output_directory) then "-d" else ""} \
      ~{if (consensus) then "-consensus" else ""} \
      ~{if (aligner) then "-aligner" else ""} \
      ~{if defined(bwa_options) then ("-bwa_options " +  '"' + bwa_options + '"') else ""} \
      ~{if defined(bowtie_options) then ("-bowtie_options " +  '"' + bowtie_options + '"') else ""} \
      ~{if (snap_options) then "-snap_options" else ""} \
      ~{if (minimap_two_options) then "-minimap2_options" else ""} \
      ~{if (skip_aln) then "-skip_aln" else ""} \
      ~{if (no_plot) then "-no_plot" else ""} \
      ~{if (no_snp) then "-no_snp" else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if (cpu) then "-cpu" else ""} \
      ~{if defined(min_in_del_candidate_depth) then ("-min_indel_candidate_depth " +  '"' + min_in_del_candidate_depth + '"') else ""} \
      ~{if (min_alt_bases) then "-min_alt_bases" else ""} \
      ~{if (max_depth) then "-max_depth" else ""} \
      ~{if (min_depth) then "-min_depth" else ""} \
      ~{if (snp_gap_filter) then "-snp_gap_filter" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    spaceseparated_pairedend_reads: "'leftSequenceFile rightSequenceFile'\\nSpace-separated paired-end reads in quote"
    sequencefileprovides_file_containing: "sequenceFile\\nProvides a file containing single-end reads."
    long: "long reads file in fasta format."
    pac_bio: "<bool> using this flag combined with -long for Pacbio long reads (bwa only)"
    ref: "reference sequences file in fasta format"
    pre: "output files' prefix (default \\\"ReadsMapping\\\")"
    output_directory: "output directory"
    consensus: "<bool> output consensus fasta file (default: on, set 0 to turn off)"
    aligner: "bwa or bowtie or snap or minimap2 (default: bwa)"
    bwa_options: "bwa options\\ntype \\\"bwa mem\\\" to see options\\ndefault: \\\"-t 4 \\\"\\n-t        <int> number of threads [4]\\n-I        the input is in the Illumina 1.3+ FASTQ-like format"
    bowtie_options: "bowtie options\\ntype \\\"bowtie2 -h\\\" to see options\\ndefault: \\\"-p 4 -a \\\"\\n-p           <int> number of alignment threads to launch [4]\\n-a           report all alignments; very slow\\n--phred64    qualities are Phred+64"
    snap_options: "snap options\\ntype \\\"snap paired\\\" to see options"
    minimap_two_options: "type \\\"minimap2\\\" to see options\\ndefault: \\\"-t 4 \\\""
    skip_aln: "<bool> skip the alignment steps, assume bam files were generated\\nand with proper prefix,outpurDir.  default: off"
    no_plot: "<bool> default: off"
    no_snp: "<bool> default: off"
    debug: "<bool> default: off"
    cpu: "number of CPUs [4]. will overwrite aligner options."
    min_in_del_candidate_depth: "number gapped reads for indel candidates [3]"
    min_alt_bases: "minimum number of alternate bases [3]"
    max_depth: "maximum read depth [1000000]"
    min_depth: "minimum read depth [7]"
    snp_gap_filter: "SNP within INT bp around a gap to be filtered [3]"
    perl: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}