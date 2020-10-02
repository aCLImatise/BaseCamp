class: CommandLineTool
id: srst2.cwl
inputs:
- id: in_input_se
  doc: Single end read file(s) for analysing (may be gzipped)
  type: string[]
  inputBinding:
    prefix: --input_se
- id: in_input_pe
  doc: Paired end read files for analysing (may be gzipped)
  type: string[]
  inputBinding:
    prefix: --input_pe
- id: in_merge_paired
  doc: "Switch on if all the input read sets belong to a\nsingle sample, and you want\
    \ to merge their data to get\na single result"
  type: boolean
  inputBinding:
    prefix: --merge_paired
- id: in_forward
  doc: "Designator for forward reads (only used if NOT in\nMiSeq format sample_S1_L001_R1_001.fastq.gz;\
    \ otherwise\ndefault is _1, i.e. expect forward reads as\nsample_1.fastq.gz)"
  type: long
  inputBinding:
    prefix: --forward
- id: in_reverse
  doc: "Designator for reverse reads (only used if NOT in\nMiSeq format sample_S1_L001_R2_001.fastq.gz;\
    \ otherwise\ndefault is _2, i.e. expect forward reads as\nsample_2.fastq.gz"
  type: long
  inputBinding:
    prefix: --reverse
- id: in_read_type
  doc: "Read file type (for bowtie2; default is q=fastq; other\noptions: qseq=solexa,\
    \ f=fasta)."
  type: string
  inputBinding:
    prefix: --read_type
- id: in_mlst_db
  doc: Fasta file of MLST alleles (optional)
  type: File
  inputBinding:
    prefix: --mlst_db
- id: in_mlst_delimiter
  doc: "Character(s) separating gene name from allele number\nin MLST database (default\
    \ \"-\", as in arcc-1)"
  type: long
  inputBinding:
    prefix: --mlst_delimiter
- id: in_mlst_definitions
  doc: "ST definitions for MLST scheme (required if mlst_db\nsupplied and you want\
    \ to calculate STs)"
  type: string
  inputBinding:
    prefix: --mlst_definitions
- id: in_mlst_max_mismatch
  doc: "Maximum number of mismatches per read for MLST allele\ncalling (default 10)"
  type: long
  inputBinding:
    prefix: --mlst_max_mismatch
- id: in_gene_db
  doc: Fasta file/s for gene databases (optional)
  type: string[]
  inputBinding:
    prefix: --gene_db
- id: in_no_gene_details
  doc: Switch OFF verbose reporting of gene typing
  type: boolean
  inputBinding:
    prefix: --no_gene_details
- id: in_gene_max_mismatch
  doc: "Maximum number of mismatches per read for gene\ndetection and allele calling\
    \ (default 10)"
  type: long
  inputBinding:
    prefix: --gene_max_mismatch
- id: in_min_coverage
  doc: "Minimum %coverage cutoff for gene reporting (default\n90)"
  type: long
  inputBinding:
    prefix: --min_coverage
- id: in_max_divergence
  doc: "Maximum %divergence cutoff for gene reporting (default\n10)"
  type: long
  inputBinding:
    prefix: --max_divergence
- id: in_min_depth
  doc: "Minimum mean depth to flag as dubious allele call\n(default 5)"
  type: long
  inputBinding:
    prefix: --min_depth
- id: in_min_edge_depth
  doc: "Minimum edge depth to flag as dubious allele call\n(default 2)"
  type: long
  inputBinding:
    prefix: --min_edge_depth
- id: in_prob_err
  doc: Probability of sequencing error (default 0.01)
  type: double
  inputBinding:
    prefix: --prob_err
- id: in_truncation_score_tolerance
  doc: "% increase in score allowed to choose non-truncated\nallele"
  type: string
  inputBinding:
    prefix: --truncation_score_tolerance
- id: in_stop_after
  doc: "Stop mapping after this number of reads have been\nmapped (otherwise map all)"
  type: long
  inputBinding:
    prefix: --stop_after
- id: in_other
  doc: "Other arguments to pass to bowtie2 (must be escaped,\ne.g. \"\\--no-mixed\"\
    ."
  type: long
  inputBinding:
    prefix: --other
- id: in_max_unaligned_overlap
  doc: "Read discarded from alignment if either of its ends\nhas unaligned overlap\
    \ with the reference that is\nlonger than this value (default 10)"
  type: long
  inputBinding:
    prefix: --max_unaligned_overlap
- id: in_mapq
  doc: Samtools -q parameter (default 1)
  type: long
  inputBinding:
    prefix: --mapq
- id: in_base_q
  doc: Samtools -Q parameter (default 20)
  type: long
  inputBinding:
    prefix: --baseq
- id: in_sam_tools_args
  doc: "Other arguments to pass to samtools mpileup (must be\nescaped, e.g. \"\\-A\"\
    )."
  type: string
  inputBinding:
    prefix: --samtools_args
- id: in_output
  doc: Prefix for srst2 output files
  type: long
  inputBinding:
    prefix: --output
- id: in_log
  doc: Switch ON logging to file (otherwise log to stdout)
  type: boolean
  inputBinding:
    prefix: --log
- id: in_save_scores
  doc: Switch ON verbose reporting of all scores
  type: boolean
  inputBinding:
    prefix: --save_scores
- id: in_report_new_consensus
  doc: "If a matching alleles is not found, report the\nconsensus allele. Note, only\
    \ SNP differences are\nconsidered, not indels."
  type: boolean
  inputBinding:
    prefix: --report_new_consensus
- id: in_report_all_consensus
  doc: "Report the consensus allele for the most likely\nallele. Note, only SNP differences\
    \ are considered, not\nindels."
  type: boolean
  inputBinding:
    prefix: --report_all_consensus
- id: in_use_existing_bowtie_two_sam
  doc: "Use existing SAM file generated by Bowtie2 if\navailable, otherwise they will\
    \ be generated"
  type: boolean
  inputBinding:
    prefix: --use_existing_bowtie2_sam
- id: in_use_existing_pile_up
  doc: "Use existing pileups if available, otherwise they will\nbe generated"
  type: boolean
  inputBinding:
    prefix: --use_existing_pileup
- id: in_use_existing_scores
  doc: "Use existing scores files if available, otherwise they\nwill be generated"
  type: boolean
  inputBinding:
    prefix: --use_existing_scores
- id: in_keep_interim_alignment
  doc: "Keep interim files (sam & unsorted bam), otherwise\nthey will be deleted after\
    \ sorted bam is created"
  type: boolean
  inputBinding:
    prefix: --keep_interim_alignment
- id: in_threads
  doc: Use multiple threads in Bowtie and Samtools
  type: string
  inputBinding:
    prefix: --threads
- id: in_prev_output
  doc: "SRST2 results files to compile (any new results from\nthis run will also be\
    \ incorporated)\n"
  type: string[]
  inputBinding:
    prefix: --prev_output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- srst2
