class: CommandLineTool
id: brassI_filter.pl.cwl
inputs:
- id: in_in_file
  doc: ': Name of the input brassI marked groups file'
  type: boolean
  inputBinding:
    prefix: -infile
- id: in_outfile
  doc: ': Name of the output file (bedpe filename extension will be appended if not
    supplied)'
  type: File
  inputBinding:
    prefix: -outfile
- id: in_tumour
  doc: ': Name of the tumour sample'
  type: boolean
  inputBinding:
    prefix: -tumour
- id: in_trans_only
  doc: ': run/rerun translocation flagging of the bedpe file'
  type: boolean
  inputBinding:
    prefix: -trans_only
- id: in_occurrences_only
  doc: ': run/rerun occurrences flagging of the bedpe file'
  type: boolean
  inputBinding:
    prefix: -occurrences_only
- id: in_cn_only
  doc: ': run/rerun near-copynumber-change flagging of the bedpe file'
  type: boolean
  inputBinding:
    prefix: -cn_only
- id: in_blat_only
  doc: ': run/rerun blat flagging of the bedpe file'
  type: boolean
  inputBinding:
    prefix: -blat_only
- id: in_seq_depth
  doc: ': filter flag. Sequence depth for this sample. (default = 30)'
  type: boolean
  inputBinding:
    prefix: -seq_depth
- id: in_seq_depth_threshold
  doc: ': filter flag. Use min_tumour_count_high over this value and min_tumour_count_low
    otherwise. (default = 25)'
  type: boolean
  inputBinding:
    prefix: -seq_depth_threshold
- id: in_distance_threshold
  doc: ': filter flag. Discard rearrangements, where chrH=chrL, that do not exceed
    this value (default = 100)'
  type: boolean
  inputBinding:
    prefix: -distance_threshold
- id: in_min_tumour_count_low
  doc: ": filter flag. Discard rearrangements which do not reach this number of reads\
    \ in any of the tumour or metastatic samples involved\n(low seq_depth) (default\
    \ = 2)"
  type: boolean
  inputBinding:
    prefix: -min_tumour_count_low
- id: in_min_tumour_count_high
  doc: ": filter flag. Discard rearrangements which do not reach this number of reads\
    \ in any of the tumour or metastatic samples involved\n(above seq_depth threshold)\
    \ (default = 4)"
  type: boolean
  inputBinding:
    prefix: -min_tumour_count_high
- id: in_max_normal_count
  doc: ': filter flag. Discard rearrangements which have more than this number of
    reads in the matched normal (default = 0)'
  type: boolean
  inputBinding:
    prefix: -max_normal_count
- id: in_max_np_sample_count
  doc: ': filter flag. Discard rearrangements which have more than this number of
    unmatched normal panel samples with reads  (default = 0)'
  type: boolean
  inputBinding:
    prefix: -max_np_sample_count
- id: in_max_np_count
  doc: ': filter flag. Discard rearrangements which have more than this number of
    reads in the unmatched normal panel samples (default = 0, +1 for foldback <= 5kb)'
  type: boolean
  inputBinding:
    prefix: -max_np_count
- id: in_discard_if_repeats
  doc: ': filter flag. Discard rearrangements which are associated with known repeats
    (default = 0)'
  type: boolean
  inputBinding:
    prefix: -discard_if_repeats
- id: in_bal_trans_field
  doc: ': which number field of the bedpe output file the balanced translocation flag
    should go into (default = 21)'
  type: boolean
  inputBinding:
    prefix: -bal_trans_field
- id: in_in_v_field
  doc: ': which number field of the bedpe output file the inversion flag should go
    into (default = 22)'
  type: boolean
  inputBinding:
    prefix: -inv_field
- id: in_occ_l_field
  doc: ': which number field of the bedpe output file the L occurrences flag should
    go into (default = 23)'
  type: boolean
  inputBinding:
    prefix: -occL_field
- id: in_occ_h_field
  doc: ': which number field of the bedpe output file the H occurrences flag should
    go into (default = 24)'
  type: boolean
  inputBinding:
    prefix: -occH_field
- id: in_cn_field
  doc: ': which number field of the bedpe output file the near-copynumber-change flag
    should go into (default = 25)'
  type: boolean
  inputBinding:
    prefix: -cn_field
- id: in_blat_field
  doc: ': which number field of the bedpe output file the L v H blat score should
    go into (default = 26)'
  type: boolean
  inputBinding:
    prefix: -blat_field
- id: in_occurs_distance
  doc: ': how far away breakpoint ends in 2 different rearrangements can be, to be
    declared a similar coordinate (default = 500)'
  type: boolean
  inputBinding:
    prefix: -occurs_distance
- id: in_bal_distance
  doc: ': how far away the breakpoint coordinates for 2 different rearrangements can
    be, to be declared a balanced translocation (default = 100000)'
  type: boolean
  inputBinding:
    prefix: -bal_distance
- id: in_in_v_distance
  doc: ': how far away the breakpoint coordinates for 2 different rearrangements can
    be, to be declared a inversion (default = 1000)'
  type: boolean
  inputBinding:
    prefix: -inv_distance
- id: in_cn_distance
  doc: ': how far away a copynumber chagepoint can be from a rearrangement for it
    to qualify as a changepoint hit (default = 100000)'
  type: boolean
  inputBinding:
    prefix: -cn_distance
- id: in_cn_one_end_hit
  doc: ': If -cn_one_end_hit is present, call a hit even if only one end of the rearrangement
    is near a changepoint (default = not set)'
  type: boolean
  inputBinding:
    prefix: -cn_one_end_hit
- id: in_as_cat
  doc: ": copynumber (cn) segments summary file for this sample - ASCAT. (optional)\n\
    Line Format: unused,chr,start,end,normal_total_cn(optional),normal_minor_cn(optional),tumour_total_cn,tumour_minor_cn"
  type: boolean
  inputBinding:
    prefix: -ascat
- id: in_ngs
  doc: ": copynumber (cn) segments summary file for this sample - NGS. (optional)\n\
    Line Format: unused,chr,start,end,normal_total_cn(optional),normal_minor_cn(optional),tumour_total_cn,tumour_minor_cn"
  type: boolean
  inputBinding:
    prefix: -ngs
- id: in_bb
  doc: ": copynumber (cn) segments summary file for this sample - Battenberg. (optional)\n\
    Line Format: unused,chr,start,end,normal_total_cn(optional),normal_minor_cn(optional),tumour_total_cn,tumour_minor_cn"
  type: boolean
  inputBinding:
    prefix: -bb
- id: in_ref
  doc: ': Blat of breakpoint range L against range H - fasta format Reference file
    (fai index file also present) to retrieve breakpoint range sequence from.'
  type: boolean
  inputBinding:
    prefix: -ref
- id: in_blat
  doc: ': Blat of breakpoint range L against range H - blat script to use (default
    = blat)'
  type: boolean
  inputBinding:
    prefix: -blat
- id: in_min_identity
  doc: ': Blat of breakpoint range L against range H - minimum identity value to supply
    to blat (default = 95)'
  type: boolean
  inputBinding:
    prefix: -minIdentity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: ': Name of the output file (bedpe filename extension will be appended if not
    supplied)'
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- brassI_filter.pl
