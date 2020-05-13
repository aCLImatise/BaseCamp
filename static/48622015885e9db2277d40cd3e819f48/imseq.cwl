class: CommandLineTool
id: imseq.cwl
inputs:
- id: reference
  doc: FASTA file with gene segment reference sequences.
  type: File
  inputBinding:
    prefix: --reference
- id: out_amino
  doc: Output file path for translated clonotypes.
  type: string
  inputBinding:
    prefix: --out-amino
- id: out_nuc
  doc: Output file path for untranslated clonotypes.
  type: string
  inputBinding:
    prefix: --out-nuc
- id: out
  doc: Output file path for verbose output per analyzed read.
  type: string
  inputBinding:
    prefix: --out
- id: reverse
  doc: By default, V-reads are read as they are and V(D)J-reads are reverse complemented.
    Use this switch for the opposite behaviour.
  type: boolean
  inputBinding:
    prefix: --reverse
- id: truncate_reads
  doc: 'Truncate reads to the specified length. 0 leaves them at their original lengths.
    Default: 0.'
  type: string
  inputBinding:
    prefix: --truncate-reads
- id: reject_log
  doc: Log file for rejected reads. If empty, no log file is written.
  type: File
  inputBinding:
    prefix: --reject-log
- id: with_alleles
  doc: Keep allele information in detailed output file specified with -o.
  type: boolean
  inputBinding:
    prefix: --with-alleles
- id: v_err_rate
  doc: 'Maximum error rate allowed within the V segment alignment In range [0..inf].
    Default: 0.05.'
  type: string
  inputBinding:
    prefix: --v-err-rate
- id: j_err_rate
  doc: 'Maximum error rate allowed within the J segment alignment In range [0..inf].
    Default: 0.15.'
  type: string
  inputBinding:
    prefix: --j-err-rate
- id: paired_v_error
  doc: 'Maximum error rate in the alignment between the forward-read identified V
    segment and the reverse read. Default: Use value from -ev. In range [0..1].'
  type: string
  inputBinding:
    prefix: --paired-v-error
- id: v_read_crop
  doc: 'Crop NUM bases from the beginning of the V read before processing it In range
    [0..inf]. Default: 0.'
  type: string
  inputBinding:
    prefix: --v-read-crop
- id: j_core_length
  doc: 'Length of the J core fragment. In range [5..20]. Default: 12.'
  type: string
  inputBinding:
    prefix: --j-core-length
- id: j_core_offset
  doc: 'Offset of the V core fragment. Default: -6.'
  type: string
  inputBinding:
    prefix: --j-core-offset
- id: v_core_length
  doc: 'Length of the V core fragment. Default: Automatically select value between
    10 and 20 based on minimum observed read length. In range [5..inf].'
  type: string
  inputBinding:
    prefix: --v-core-length
- id: v_core_offset
  doc: 'Offset of the V core fragment. Default: 0.'
  type: string
  inputBinding:
    prefix: --v-core-offset
- id: v_core_errors
  doc: 'Maximum number of errors when matching the V core fragments. In range [0..inf].
    Default: 1.'
  type: string
  inputBinding:
    prefix: --v-core-errors
- id: j_core_errors
  doc: 'Maximum number of errors when matching the J core fragments. In range [0..inf].
    Default: 2.'
  type: string
  inputBinding:
    prefix: --j-core-errors
- id: min_qual
  doc: "Minimum average read phred score. In paired end mode, this is applied to both\
    \ reads. See '-sfb'. In range [0..60]. Default: 30."
  type: string
  inputBinding:
    prefix: --min-qual
- id: min_clust_qual
  doc: 'Minimum average cluster phred score. In range [0..60]. Default: 30.'
  type: string
  inputBinding:
    prefix: --min-clust-qual
- id: min_read_length
  doc: "Minimum read length. In paired end mode, this is applied to both reads. See\
    \ '-sfb'. In range [0..inf]. Default: 75."
  type: string
  inputBinding:
    prefix: --min-read-length
- id: min_cdr3_length
  doc: 'Minimum CDR3 length in amino acids. In range [0..inf]. Default: 5.'
  type: string
  inputBinding:
    prefix: --min-cdr3-length
- id: single_end_fall_back
  doc: Fall back to single end analysis based on VDJ read if V read fails -mq or -mrl.
  type: boolean
  inputBinding:
    prefix: --single-end-fallback
- id: barcode_vdj
  doc: 'In paired end mode: Read the barcode from the VDJ read instead of the V read.'
  type: boolean
  inputBinding:
    prefix: --barcode-vdj
- id: bc_seq_max_err
  doc: 'Maximum number of errors allowed in the barcode sequence In range [0..inf].
    Default: 1.'
  type: string
  inputBinding:
    prefix: --bcseq-max-err
- id: bc_min_qual
  doc: 'Minimum per base quality in molecular barcode region In range [0..60]. Default:
    30.'
  type: string
  inputBinding:
    prefix: --bc-min-qual
- id: barcode_length
  doc: "Length of random barcode at the beginning of the read. A value of '0' disables\
    \ barcode based correction. In range [0..inf]. Default: 0."
  type: string
  inputBinding:
    prefix: --barcode-length
- id: barcode_err_rate
  doc: 'Maximum error rate between reads in order to be merged based on barcode sequence
    In range [0..1]. Default: 0.05.'
  type: string
  inputBinding:
    prefix: --barcode-err-rate
- id: barcode_freq_rate
  doc: 'Inclusive maximum frequency ratio between smaller and larger cluster during
    barcode clustering In range [0..1]. Default: 0.2.'
  type: string
  inputBinding:
    prefix: --barcode-freq-rate
- id: barcode_stats
  doc: Path to barcode stats output file. If empty, no file is written. Ignored if
    -bcl is 0.
  type: File
  inputBinding:
    prefix: --barcode-stats
- id: out_amino_bc
  doc: Output file path for translated clonotypes with barcode corrected counts. Ignored
    if -bcl is 0.
  type: File
  inputBinding:
    prefix: --out-amino-bc
- id: out_nuc_bc
  doc: Output file path for untranslated clonotypes with barcode corrected counts.
    Ignored if -bcl is 0.
  type: File
  inputBinding:
    prefix: --out-nuc-bc
- id: merge_ambiguous_seg
  doc: Merge clonotypes with identical CDR3 sequences separated by ambiguous segment
    identification
  type: boolean
  inputBinding:
    prefix: --merge-ambiguous-seg
- id: qual_clust
  doc: Enable quality score based clustering.
  type: boolean
  inputBinding:
    prefix: --qual-clust
- id: simple_clust
  doc: Enable simple distance-based clustering
  type: boolean
  inputBinding:
    prefix: --simple-clust
- id: max_err_hq
  doc: 'Maximum edit-distance for two clusters to be clustered without low quality
    correlation In range [0..inf]. Default: 4.'
  type: string
  inputBinding:
    prefix: --max-err-hq
- id: min_sd_diff
  doc: 'How many standard deviations must an error positions quality value be below
    the mean to be considered for clustering. Default: 1.'
  type: string
  inputBinding:
    prefix: --min-sd-diff
- id: max_err_lq
  doc: 'Maximum edit-distance for two clusters to be potentially clustered without
    low quality correlation In range [0..inf]. Default: 2.'
  type: string
  inputBinding:
    prefix: --max-err-lq
- id: max_clust_ratio
  doc: 'Maximum abundance ratio for two clonotypes to be clustered In range [0..1].
    Default: 1.'
  type: string
  inputBinding:
    prefix: --max-clust-ratio
- id: jobs
  doc: 'Number of parallel jobs (threads). Default: 1.'
  type: string
  inputBinding:
    prefix: --jobs
- id: print_alignments
  doc: Print the V/J alignments for each read. Implies -j 1.
  type: boolean
  inputBinding:
    prefix: --print-alignments
outputs: []
cwlVersion: v1.1
baseCommand:
- imseq
