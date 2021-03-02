class: CommandLineTool
id: imseq.cwl
inputs:
- id: in_reference
  doc: FASTA file with gene segment reference sequences.
  type: File?
  inputBinding:
    prefix: --reference
- id: in_out_amino
  doc: Output file path for translated clonotypes.
  type: File?
  inputBinding:
    prefix: --out-amino
- id: in_out_nuc
  doc: Output file path for untranslated clonotypes.
  type: File?
  inputBinding:
    prefix: --out-nuc
- id: in_out
  doc: Output file path for verbose output per analyzed read.
  type: File?
  inputBinding:
    prefix: --out
- id: in_reverse
  doc: "By default, V-reads are read as they are and V(D)J-reads are reverse\ncomplemented.\
    \ Use this switch for the opposite behaviour."
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_truncate_reads
  doc: "Truncate reads to the specified length. 0 leaves them at their\noriginal lengths.\
    \ Default: 0."
  type: long?
  inputBinding:
    prefix: --truncate-reads
- id: in_reject_log
  doc: Log file for rejected reads. If empty, no log file is written.
  type: File?
  inputBinding:
    prefix: --reject-log
- id: in_with_alleles
  doc: Keep allele information in detailed output file specified with -o.
  type: File?
  inputBinding:
    prefix: --with-alleles
- id: in_v_err_rate
  doc: "Maximum error rate allowed within the V segment alignment In range\n[0..inf].\
    \ Default: 0.05."
  type: long?
  inputBinding:
    prefix: --v-err-rate
- id: in_j_err_rate
  doc: "Maximum error rate allowed within the J segment alignment In range\n[0..inf].\
    \ Default: 0.15."
  type: long?
  inputBinding:
    prefix: --j-err-rate
- id: in_paired_v_error
  doc: "Maximum error rate in the alignment between the forward-read\nidentified V\
    \ segment and the reverse read. Default: Use value from\n-ev. In range [0..1]."
  type: long?
  inputBinding:
    prefix: --paired-v-error
- id: in_v_read_crop
  doc: "Crop NUM bases from the beginning of the V read before processing it\nIn range\
    \ [0..inf]. Default: 0."
  type: long?
  inputBinding:
    prefix: --v-read-crop
- id: in_j_core_length
  doc: 'Length of the J core fragment. In range [5..20]. Default: 12.'
  type: long?
  inputBinding:
    prefix: --j-core-length
- id: in_j_core_offset
  doc: 'Offset of the V core fragment. Default: -6.'
  type: long?
  inputBinding:
    prefix: --j-core-offset
- id: in_v_core_length
  doc: "Length of the V core fragment. Default: Automatically select value\nbetween\
    \ 10 and 20 based on minimum observed read length. In range\n[5..inf]."
  type: long?
  inputBinding:
    prefix: --v-core-length
- id: in_v_core_offset
  doc: 'Offset of the V core fragment. Default: 0.'
  type: long?
  inputBinding:
    prefix: --v-core-offset
- id: in_v_core_errors
  doc: "Maximum number of errors when matching the V core fragments. In\nrange [0..inf].\
    \ Default: 1."
  type: long?
  inputBinding:
    prefix: --v-core-errors
- id: in_j_core_errors
  doc: "Maximum number of errors when matching the J core fragments. In\nrange [0..inf].\
    \ Default: 2."
  type: long?
  inputBinding:
    prefix: --j-core-errors
- id: in_min_qual
  doc: "Minimum average read phred score. In paired end mode, this is\napplied to\
    \ both reads. See '-sfb'. In range [0..60]. Default: 30."
  type: long?
  inputBinding:
    prefix: --min-qual
- id: in_min_clust_qual
  doc: 'Minimum average cluster phred score. In range [0..60]. Default: 30.'
  type: long?
  inputBinding:
    prefix: --min-clust-qual
- id: in_min_read_length
  doc: "Minimum read length. In paired end mode, this is applied to both\nreads. See\
    \ '-sfb'. In range [0..inf]. Default: 75."
  type: long?
  inputBinding:
    prefix: --min-read-length
- id: in_min_cdr_three_length
  doc: 'Minimum CDR3 length in amino acids. In range [0..inf]. Default: 5.'
  type: long?
  inputBinding:
    prefix: --min-cdr3-length
- id: in_single_end_fall_back
  doc: "Fall back to single end analysis based on VDJ read if V read fails\n-mq or\
    \ -mrl."
  type: boolean?
  inputBinding:
    prefix: --single-end-fallback
- id: in_barcode_vdj
  doc: "In paired end mode: Read the barcode from the VDJ read instead of\nthe V read."
  type: boolean?
  inputBinding:
    prefix: --barcode-vdj
- id: in_bc_seq_max_err
  doc: "Maximum number of errors allowed in the barcode sequence In range\n[0..inf].\
    \ Default: 1."
  type: long?
  inputBinding:
    prefix: --bcseq-max-err
- id: in_bc_min_qual
  doc: "Minimum per base quality in molecular barcode region In range\n[0..60]. Default:\
    \ 30."
  type: long?
  inputBinding:
    prefix: --bc-min-qual
- id: in_barcode_length
  doc: "Length of random barcode at the beginning of the read. A value of\n'0' disables\
    \ barcode based correction. In range [0..inf]. Default:\n0."
  type: long?
  inputBinding:
    prefix: --barcode-length
- id: in_barcode_err_rate
  doc: "Maximum error rate between reads in order to be merged based on\nbarcode sequence\
    \ In range [0..1]. Default: 0.05."
  type: long?
  inputBinding:
    prefix: --barcode-err-rate
- id: in_barcode_freq_rate
  doc: "Inclusive maximum frequency ratio between smaller and larger cluster\nduring\
    \ barcode clustering In range [0..1]. Default: 0.2."
  type: long?
  inputBinding:
    prefix: --barcode-freq-rate
- id: in_barcode_stats
  doc: "Path to barcode stats output file. If empty, no file is written.\nIgnored\
    \ if -bcl is 0."
  type: File?
  inputBinding:
    prefix: --barcode-stats
- id: in_out_amino_bc
  doc: "Output file path for translated clonotypes with barcode corrected\ncounts.\
    \ Ignored if -bcl is 0."
  type: File?
  inputBinding:
    prefix: --out-amino-bc
- id: in_out_nuc_bc
  doc: "Output file path for untranslated clonotypes with barcode corrected\ncounts.\
    \ Ignored if -bcl is 0."
  type: File?
  inputBinding:
    prefix: --out-nuc-bc
- id: in_merge_ambiguous_seg
  doc: "Merge clonotypes with identical CDR3 sequences separated by\nambiguous segment\
    \ identification"
  type: boolean?
  inputBinding:
    prefix: --merge-ambiguous-seg
- id: in_qual_clust
  doc: Enable quality score based clustering.
  type: boolean?
  inputBinding:
    prefix: --qual-clust
- id: in_simple_clust
  doc: Enable simple distance-based clustering
  type: boolean?
  inputBinding:
    prefix: --simple-clust
- id: in_max_err_hq
  doc: "Maximum edit-distance for two clusters to be clustered without low\nquality\
    \ correlation In range [0..inf]. Default: 4."
  type: long?
  inputBinding:
    prefix: --max-err-hq
- id: in_min_sd_diff
  doc: "How many standard deviations must an error positions quality value\nbe below\
    \ the mean to be considered for clustering. Default: 1."
  type: long?
  inputBinding:
    prefix: --min-sd-diff
- id: in_max_err_lq
  doc: "Maximum edit-distance for two clusters to be potentially clustered\nwithout\
    \ low quality correlation In range [0..inf]. Default: 2."
  type: long?
  inputBinding:
    prefix: --max-err-lq
- id: in_max_clust_ratio
  doc: "Maximum abundance ratio for two clonotypes to be clustered In range\n[0..1].\
    \ Default: 1."
  type: long?
  inputBinding:
    prefix: --max-clust-ratio
- id: in_jobs
  doc: 'Number of parallel jobs (threads). Default: 1.'
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_print_alignments
  doc: Print the V/J alignments for each read. Implies -j 1.
  type: boolean?
  inputBinding:
    prefix: --print-alignments
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_amino
  doc: Output file path for translated clonotypes.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_amino)
- id: out_out_nuc
  doc: Output file path for untranslated clonotypes.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_nuc)
- id: out_out
  doc: Output file path for verbose output per analyzed read.
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_with_alleles
  doc: Keep allele information in detailed output file specified with -o.
  type: File?
  outputBinding:
    glob: $(inputs.in_with_alleles)
- id: out_barcode_stats
  doc: "Path to barcode stats output file. If empty, no file is written.\nIgnored\
    \ if -bcl is 0."
  type: File?
  outputBinding:
    glob: $(inputs.in_barcode_stats)
- id: out_out_amino_bc
  doc: "Output file path for translated clonotypes with barcode corrected\ncounts.\
    \ Ignored if -bcl is 0."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_amino_bc)
- id: out_out_nuc_bc
  doc: "Output file path for untranslated clonotypes with barcode corrected\ncounts.\
    \ Ignored if -bcl is 0."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_nuc_bc)
hints: []
cwlVersion: v1.1
baseCommand:
- imseq
