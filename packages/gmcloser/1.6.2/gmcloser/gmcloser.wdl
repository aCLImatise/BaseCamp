version 1.0

task Gmcloser {
  input {
    File? target_s_caf
    File? query_seq
    String? prefix_out
    Int? read_file
    Int? read_len
    Int? insert
    Int? sd_insert
    String? read_format
    File? sam_talign
    File? sam_q_align
    File? sam_dir
    File? align_file
    String? connect_subcon
    String? extend
    String? blast
    Int? min_match_len
    Int? min_identity
    Int? min_len_local
    Int? min_subcon
    Int? min_gap_size
    Int? max_in_del
    Int? max_qsc
    File? base_qual
    Int? nuc_len
    Int? ad_score
    Int? hetero
    Int? thread
    Int? thread_connect
    File? long_read
    Int? lr_cov
    Int? min_q_align
    Int? iterate
    File? align_q
    String? help
  }
  command <<<
    gmcloser \
      ~{if defined(target_s_caf) then ("--target_scaf " +  '"' + target_s_caf + '"') else ""} \
      ~{if defined(query_seq) then ("--query_seq " +  '"' + query_seq + '"') else ""} \
      ~{if defined(prefix_out) then ("--prefix_out " +  '"' + prefix_out + '"') else ""} \
      ~{if defined(read_file) then ("--read_file " +  '"' + read_file + '"') else ""} \
      ~{if defined(read_len) then ("--read_len " +  '"' + read_len + '"') else ""} \
      ~{if defined(insert) then ("--insert " +  '"' + insert + '"') else ""} \
      ~{if defined(sd_insert) then ("--sd_insert " +  '"' + sd_insert + '"') else ""} \
      ~{if defined(read_format) then ("--read_format " +  '"' + read_format + '"') else ""} \
      ~{if defined(sam_talign) then ("--sam_talign " +  '"' + sam_talign + '"') else ""} \
      ~{if defined(sam_q_align) then ("--sam_qalign " +  '"' + sam_q_align + '"') else ""} \
      ~{if defined(sam_dir) then ("--sam_dir " +  '"' + sam_dir + '"') else ""} \
      ~{if defined(align_file) then ("--align_file " +  '"' + align_file + '"') else ""} \
      ~{if defined(connect_subcon) then ("--connect_subcon " +  '"' + connect_subcon + '"') else ""} \
      ~{if defined(extend) then ("--extend " +  '"' + extend + '"') else ""} \
      ~{if defined(blast) then ("--blast " +  '"' + blast + '"') else ""} \
      ~{if defined(min_match_len) then ("--min_match_len " +  '"' + min_match_len + '"') else ""} \
      ~{if defined(min_identity) then ("--min_identity " +  '"' + min_identity + '"') else ""} \
      ~{if defined(min_len_local) then ("--min_len_local " +  '"' + min_len_local + '"') else ""} \
      ~{if defined(min_subcon) then ("--min_subcon " +  '"' + min_subcon + '"') else ""} \
      ~{if defined(min_gap_size) then ("--min_gap_size " +  '"' + min_gap_size + '"') else ""} \
      ~{if defined(max_in_del) then ("--max_indel " +  '"' + max_in_del + '"') else ""} \
      ~{if defined(max_qsc) then ("--max_qsc " +  '"' + max_qsc + '"') else ""} \
      ~{if defined(base_qual) then ("--base_qual " +  '"' + base_qual + '"') else ""} \
      ~{if defined(nuc_len) then ("--nuc_len " +  '"' + nuc_len + '"') else ""} \
      ~{if defined(ad_score) then ("--ad_score " +  '"' + ad_score + '"') else ""} \
      ~{if defined(hetero) then ("--hetero " +  '"' + hetero + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{if defined(thread_connect) then ("--thread_connect " +  '"' + thread_connect + '"') else ""} \
      ~{if defined(long_read) then ("--long_read " +  '"' + long_read + '"') else ""} \
      ~{if defined(lr_cov) then ("--lr_cov " +  '"' + lr_cov + '"') else ""} \
      ~{if defined(min_q_align) then ("--min_qalign " +  '"' + min_q_align + '"') else ""} \
      ~{if defined(iterate) then ("--iterate " +  '"' + iterate + '"') else ""} \
      ~{if defined(align_q) then ("--alignq " +  '"' + align_q + '"') else ""} \
      ~{if defined(help) then ("--help " +  '"' + help + '"') else ""}
  >>>
  parameter_meta {
    target_s_caf: "input target scaffold fasta file (e.g., scaf.fa) [mandatory]"
    query_seq: "input query contig (or long-read) fasta file (e.g., contig.fa) (if long reads are used, -lr option must be specified) [mandatory]"
    prefix_out: "prefix name of output files [mandatory]"
    read_file: "space-separated list of fastq or fasta files (or gzip compressed files) of paired-end reads (e.g., -r read_pe1.fq read_pe2.fq)"
    read_len: "read length of paired-end reads specified with the -r, -st, -sq, or -sd option (mean read length if read lengths are variable) [mandatory]"
    insert: "average insert size of paired-end reads [>read_len <20001, default: 400]"
    sd_insert: "standard deviation of insert size of paired-end reads [default: 40]"
    read_format: "fastq or fasta [default: fastq]"
    sam_talign: "space-separated list of sam alignment file(s) for target scaffolds, created in a single-end read alignment mode for paired-end reads (e.g., -sa tPE1.sam tPE2.sam, for paired-end read files PE1.fq and PE2.fq)"
    sam_q_align: "space-separated list of sam alignment file(s) for query contigs, created in a single-end read alignment mode for paired-end reads (e.g., -sa qPE1.sam qPE2.sam, for paired-end read files PE1.fq and PE2.fq)"
    sam_dir: "path of directory (i.e., bowtie_align) containing sam alignment files generated from a previous job with GMcloser (this can be used in place of -st and -sq option)"
    align_file: "Nucmer alignment file for query against target [optional]"
    connect_subcon: "connect between gap-encompassing subcontig pairs with their original (not merged with query contigs) termini [default: false]"
    extend: "extend scaffold temini with aligned query sequences [default: false] (When using long read query, this option is disabled in the current version)"
    blast: "conduct alignment between target and query contigs with BLASTn [default: false] (Nucmer alignment by default)"
    min_match_len: "minimum overlap length to be filtered for Nucmer alignments.\\nContig-alignments that satisfy both the values specified with -mm and -mi are selected, irrespective of any mapping rates of PE-reads. [>49, default: 300]"
    min_identity: "minimum overlap identity (%) to be filtered for Nucmer alignments. Alignments are selected by combination with -mm option. [95~100, default: 99]"
    min_len_local: "minimum overlap length for merging between neighbor subcontigs with YASS aligner [>14, default: 20]"
    min_subcon: "minimum length of subcontigs, to be used for gapclosing [default: 100]"
    min_gap_size: "minimum length of gap, when spliting the target scaffold sequences into subcontigs  [>0, default: 1]"
    max_in_del: "maximum length of indel, observed in alignments between target subcontigs and query contigs. The alignments separated by the indel will be merged. [default: 70]"
    max_qsc: "maximum alignment coverage (%) of query singletones for target subcontigs (query with >= INT is excluded from query singletone output) [default: 60]"
    base_qual: "base call quality format of fastq read file; illumina (phred64) or sanger (phred33) [default: auto]"
    nuc_len: "nucmer exact match length, a value specified with '-l' option of the Nucmer aligner [default: auto, increased from 30 to 50 depending on the total contig length]"
    ad_score: "score to add to (subtract from) the standard threshold score for selection of correct contig-subcontig alignments (e.g., 1 or -1) [default: 0]"
    hetero: "heterozygosity factor (specify this if your sequenced genome is heterozygous (>0.2% difference of the haploid size)) [default: false]"
    thread: "number of threads (for machines with multiple processors), enabling all the alignment processes in parallel [default: 5]"
    thread_connect: "number of threads (for machines with multiple processors), enabling the subcontig-connection process in parallel [default: number specified with --thread]"
    long_read: "query sequence file is a fasta file of long reads (PacBio reads must be error-corrected) [default: false] (alignment is peformed with blast)"
    lr_cov: "fold coverage of long reads for target scaffolds [default: auto ; automatically calculated by dividing a total length of query by a total length of target]"
    min_q_align: "minimum number of queries that are aligned to either 5'- or 3'-terminus of a target subcontig [default: 1]"
    iterate: "number of iteration [default: 3]"
    align_q: "BLASTn alignment file for query against query [optional]"
    help: ""
  }
  output {
    File out_stdout = stdout()
  }
}