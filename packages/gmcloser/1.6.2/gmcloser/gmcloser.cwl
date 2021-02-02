class: CommandLineTool
id: ../../../gmcloser.cwl
inputs:
- id: in_target_s_caf
  doc: input target scaffold fasta file (e.g., scaf.fa) [mandatory]
  type: File
  inputBinding:
    prefix: --target_scaf
- id: in_query_seq
  doc: input query contig (or long-read) fasta file (e.g., contig.fa) (if long reads
    are used, -lr option must be specified) [mandatory]
  type: File
  inputBinding:
    prefix: --query_seq
- id: in_prefix_out
  doc: prefix name of output files [mandatory]
  type: string
  inputBinding:
    prefix: --prefix_out
- id: in_read_file
  doc: space-separated list of fastq or fasta files (or gzip compressed files) of
    paired-end reads (e.g., -r read_pe1.fq read_pe2.fq)
  type: long
  inputBinding:
    prefix: --read_file
- id: in_read_len
  doc: read length of paired-end reads specified with the -r, -st, -sq, or -sd option
    (mean read length if read lengths are variable) [mandatory]
  type: long
  inputBinding:
    prefix: --read_len
- id: in_insert
  doc: 'average insert size of paired-end reads [>read_len <20001, default: 400]'
  type: long
  inputBinding:
    prefix: --insert
- id: in_sd_insert
  doc: 'standard deviation of insert size of paired-end reads [default: 40]'
  type: long
  inputBinding:
    prefix: --sd_insert
- id: in_read_format
  doc: 'fastq or fasta [default: fastq]'
  type: string
  inputBinding:
    prefix: --read_format
- id: in_sam_talign
  doc: space-separated list of sam alignment file(s) for target scaffolds, created
    in a single-end read alignment mode for paired-end reads (e.g., -sa tPE1.sam tPE2.sam,
    for paired-end read files PE1.fq and PE2.fq)
  type: File
  inputBinding:
    prefix: --sam_talign
- id: in_sam_q_align
  doc: space-separated list of sam alignment file(s) for query contigs, created in
    a single-end read alignment mode for paired-end reads (e.g., -sa qPE1.sam qPE2.sam,
    for paired-end read files PE1.fq and PE2.fq)
  type: File
  inputBinding:
    prefix: --sam_qalign
- id: in_sam_dir
  doc: path of directory (i.e., bowtie_align) containing sam alignment files generated
    from a previous job with GMcloser (this can be used in place of -st and -sq option)
  type: File
  inputBinding:
    prefix: --sam_dir
- id: in_align_file
  doc: Nucmer alignment file for query against target [optional]
  type: File
  inputBinding:
    prefix: --align_file
- id: in_connect_subcon
  doc: 'connect between gap-encompassing subcontig pairs with their original (not
    merged with query contigs) termini [default: false]'
  type: string
  inputBinding:
    prefix: --connect_subcon
- id: in_extend
  doc: 'extend scaffold temini with aligned query sequences [default: false] (When
    using long read query, this option is disabled in the current version)'
  type: string
  inputBinding:
    prefix: --extend
- id: in_blast
  doc: 'conduct alignment between target and query contigs with BLASTn [default: false]
    (Nucmer alignment by default)'
  type: string
  inputBinding:
    prefix: --blast
- id: in_min_match_len
  doc: "minimum overlap length to be filtered for Nucmer alignments.\nContig-alignments\
    \ that satisfy both the values specified with -mm and -mi are selected, irrespective\
    \ of any mapping rates of PE-reads. [>49, default: 300]"
  type: long
  inputBinding:
    prefix: --min_match_len
- id: in_min_identity
  doc: 'minimum overlap identity (%) to be filtered for Nucmer alignments. Alignments
    are selected by combination with -mm option. [95~100, default: 99]'
  type: long
  inputBinding:
    prefix: --min_identity
- id: in_min_len_local
  doc: 'minimum overlap length for merging between neighbor subcontigs with YASS aligner
    [>14, default: 20]'
  type: long
  inputBinding:
    prefix: --min_len_local
- id: in_min_subcon
  doc: 'minimum length of subcontigs, to be used for gapclosing [default: 100]'
  type: long
  inputBinding:
    prefix: --min_subcon
- id: in_min_gap_size
  doc: 'minimum length of gap, when spliting the target scaffold sequences into subcontigs  [>0,
    default: 1]'
  type: long
  inputBinding:
    prefix: --min_gap_size
- id: in_max_in_del
  doc: 'maximum length of indel, observed in alignments between target subcontigs
    and query contigs. The alignments separated by the indel will be merged. [default:
    70]'
  type: long
  inputBinding:
    prefix: --max_indel
- id: in_max_qsc
  doc: 'maximum alignment coverage (%) of query singletones for target subcontigs
    (query with >= INT is excluded from query singletone output) [default: 60]'
  type: long
  inputBinding:
    prefix: --max_qsc
- id: in_base_qual
  doc: 'base call quality format of fastq read file; illumina (phred64) or sanger
    (phred33) [default: auto]'
  type: File
  inputBinding:
    prefix: --base_qual
- id: in_nuc_len
  doc: "nucmer exact match length, a value specified with '-l' option of the Nucmer\
    \ aligner [default: auto, increased from 30 to 50 depending on the total contig\
    \ length]"
  type: long
  inputBinding:
    prefix: --nuc_len
- id: in_ad_score
  doc: 'score to add to (subtract from) the standard threshold score for selection
    of correct contig-subcontig alignments (e.g., 1 or -1) [default: 0]'
  type: long
  inputBinding:
    prefix: --ad_score
- id: in_hetero
  doc: 'heterozygosity factor (specify this if your sequenced genome is heterozygous
    (>0.2% difference of the haploid size)) [default: false]'
  type: long
  inputBinding:
    prefix: --hetero
- id: in_thread
  doc: 'number of threads (for machines with multiple processors), enabling all the
    alignment processes in parallel [default: 5]'
  type: long
  inputBinding:
    prefix: --thread
- id: in_thread_connect
  doc: 'number of threads (for machines with multiple processors), enabling the subcontig-connection
    process in parallel [default: number specified with --thread]'
  type: long
  inputBinding:
    prefix: --thread_connect
- id: in_long_read
  doc: 'query sequence file is a fasta file of long reads (PacBio reads must be error-corrected)
    [default: false] (alignment is peformed with blast)'
  type: File
  inputBinding:
    prefix: --long_read
- id: in_lr_cov
  doc: 'fold coverage of long reads for target scaffolds [default: auto ; automatically
    calculated by dividing a total length of query by a total length of target]'
  type: long
  inputBinding:
    prefix: --lr_cov
- id: in_min_q_align
  doc: "minimum number of queries that are aligned to either 5'- or 3'-terminus of\
    \ a target subcontig [default: 1]"
  type: long
  inputBinding:
    prefix: --min_qalign
- id: in_iterate
  doc: 'number of iteration [default: 3]'
  type: long
  inputBinding:
    prefix: --iterate
- id: in_align_q
  doc: BLASTn alignment file for query against query [optional]
  type: File
  inputBinding:
    prefix: --alignq
- id: in_help
  doc: ''
  type: string
  inputBinding:
    prefix: --help
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gmcloser
