class: CommandLineTool
id: htsbox_abreak.cwl
inputs:
- id: in_assume_input_bam
  doc: assume the input is BAM (default is SAM)
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_exclude_contigs_shorter
  doc: exclude contigs shorter than INT [0]
  type: long?
  inputBinding:
    prefix: -l
- id: in_exclude_alignemnts_score
  doc: exclude alignemnts with score less than INT [0]
  type: long?
  inputBinding:
    prefix: -s
- id: in_exclude_alignments_mapq
  doc: exclude alignments with mapQ below INT [10]
  type: long?
  inputBinding:
    prefix: -q
- id: in_filter_calls_min
  doc: filter calls with min flanking depth below INT in VCF [10]
  type: long?
  inputBinding:
    prefix: -d
- id: in_print_break_points
  doc: print break points
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_vcf_output_force
  doc: VCF output (force -p)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_unitig_sv_calling
  doc: unitig SV calling mode (-pq40 -s80)
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_faidx_indexed_fasta
  doc: faidx indexed reference fasta (for -u)
  type: File?
  inputBinding:
    prefix: -f
- id: in_aln_overlapping_aln
  doc: exclude aln overlapping another long aln by FLOAT fraction (effective w/o -p)
    [0.5]
  type: double?
  inputBinding:
    prefix: -m
- id: in_join_alignments_separated
  doc: join alignments separated by a gap shorter than INT bp (effective w/o -p) [500]
  type: long?
  inputBinding:
    prefix: -g
- id: in_hts_cmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_a_break
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_un_srt_dots_am
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- htsbox
- abreak
