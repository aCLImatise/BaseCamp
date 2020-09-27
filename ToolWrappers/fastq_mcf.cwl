class: CommandLineTool
id: fastq_mcf.cwl
inputs:
- id: in_output_file_stats
  doc: Output file (stats to stdout)
  type: File
  inputBinding:
    prefix: -o
- id: in_only_output_records
  doc: Only output the first N records (all)
  type: string
  inputBinding:
    prefix: -O
- id: in_log_scale_adapter
  doc: Log scale for adapter minimum-length-match (2.2)
  type: long
  inputBinding:
    prefix: -s
- id: in_occurance_threshold_adapter
  doc: '% occurance threshold before adapter clipping (0.25)'
  type: double
  inputBinding:
    prefix: -t
- id: in_minimum_clip_length
  doc: Minimum clip length, overrides scaled auto (1)
  type: long
  inputBinding:
    prefix: -m
- id: in_maximum_adapter_difference
  doc: Maximum adapter difference percentage (10)
  type: long
  inputBinding:
    prefix: -p
- id: in_minimum_remaining_sequence
  doc: Minimum remaining sequence length (19)
  type: long
  inputBinding:
    prefix: -l
- id: in_maximum_remaining_sequence
  doc: Maximum remaining sequence length (none)
  type: long
  inputBinding:
    prefix: -L
- id: in_remove_duplicate_reads
  doc: 'Remove duplicate reads : Read_1 has an identical N bases (0)'
  type: long
  inputBinding:
    prefix: -D
- id: in_skew_percentagelessthan_causing
  doc: sKew percentage-less-than causing cycle removal (2)
  type: long
  inputBinding:
    prefix: -k
- id: in_bad_read_percentage
  doc: "'N' (Bad read) percentage causing cycle removal (20)"
  type: long
  inputBinding:
    prefix: -x
- id: in_quality_threshold_causing
  doc: quality threshold causing base removal (10)
  type: long
  inputBinding:
    prefix: -q
- id: in_windowsize_quality_trimming
  doc: window-size for quality trimming (1)
  type: long
  inputBinding:
    prefix: -w
- id: in_remove_homopolymer_reads
  doc: remove >95% homopolymer reads (no)
  type: boolean
  inputBinding:
    prefix: -H
- id: in_remove_low_complexity
  doc: remove low complexity reads (no)
  type: boolean
  inputBinding:
    prefix: -X
- id: in_set_default_parameters
  doc: Set all default parameters to zero/do nothing
  type: boolean
  inputBinding:
    prefix: '-0'
- id: in_u_force_disableenable
  doc: '|u     Force disable/enable Illumina PF filtering (auto)'
  type: boolean
  inputBinding:
    prefix: -U
- id: in_phredscale_auto
  doc: Phred-scale (auto)
  type: string
  inputBinding:
    prefix: -P
- id: in_dons_frontsends_reads
  doc: Don't remove N's from the fronts/ends of reads
  type: boolean
  inputBinding:
    prefix: -R
- id: in_clip_just_output
  doc: Don't clip, just output what would be done
  type: boolean
  inputBinding:
    prefix: -n
- id: in_only_keep_clipped_reads
  doc: Only keep clipped reads
  type: boolean
  inputBinding:
    prefix: -K
- id: in_save_discarded_reads
  doc: Save all discarded reads to '.skip' files
  type: boolean
  inputBinding:
    prefix: -S
- id: in_number_reads_use
  doc: Number of reads to use for subsampling (300k)
  type: long
  inputBinding:
    prefix: -C
- id: in_output_lots_random
  doc: Output lots of random debugging stuff
  type: boolean
  inputBinding:
    prefix: -d
- id: in_cycle_adjust
  doc: CYC,AMT   Adjust cycle CYC (negative = offset from end) by amount AMT
  type: boolean
  inputBinding:
    prefix: --cycle-adjust
- id: in_phred_adjust
  doc: SCORE,AMT Adjust score SCORE by amount AMT
  type: boolean
  inputBinding:
    prefix: --phred-adjust
- id: in_phred_adjust_max
  doc: SCORE     Adjust scores > SCORE to SCOTE
  type: boolean
  inputBinding:
    prefix: --phred-adjust-max
- id: in_homopolymer_pct
  doc: PCT       Homopolymer filter percent (95)
  type: boolean
  inputBinding:
    prefix: --homopolymer-pct
- id: in_low_complex_pct
  doc: PCT       Complexity filter percent (95)
  type: boolean
  inputBinding:
    prefix: --lowcomplex-pct
- id: in_keep_clipped
  doc: Only keep clipped (same as -K)
  type: boolean
  inputBinding:
    prefix: --keep-clipped
- id: in_max_output_reads
  doc: N        Only output first N records (same as -O)
  type: boolean
  inputBinding:
    prefix: --max-output-reads
- id: in_adapters_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reads_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_mates_one_dot_fq
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_stats
  doc: Output file (stats to stdout)
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_stats)
cwlVersion: v1.1
baseCommand:
- fastq-mcf
