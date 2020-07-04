class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/htsbox_abreak.cwl
inputs:
- id: assume_input_bam
  doc: assume the input is BAM (default is SAM)
  type: boolean
  inputBinding:
    prefix: -b
- id: exclude_contigs_shorter
  doc: exclude contigs shorter than INT [0]
  type: long
  inputBinding:
    prefix: -l
- id: exclude_alignemnts_less
  doc: exclude alignemnts with score less than INT [0]
  type: long
  inputBinding:
    prefix: -s
- id: exclude_alignments_mapq
  doc: exclude alignments with mapQ below INT [10]
  type: long
  inputBinding:
    prefix: -q
- id: filter_calls_min
  doc: filter calls with min flanking depth below INT in VCF [10]
  type: long
  inputBinding:
    prefix: -d
- id: print_break_points
  doc: print break points
  type: boolean
  inputBinding:
    prefix: -p
- id: vcf_output_force
  doc: VCF output (force -p)
  type: boolean
  inputBinding:
    prefix: -c
- id: unitig_sv_calling
  doc: unitig SV calling mode (-pq40 -s80)
  type: boolean
  inputBinding:
    prefix: -u
- id: faidx_indexed_fasta
  doc: faidx indexed reference fasta (for -u)
  type: File
  inputBinding:
    prefix: -f
- id: exclude_aln_overlapping
  doc: exclude aln overlapping another long aln by FLOAT fraction (effective w/o -p)
    [0.5]
  type: double
  inputBinding:
    prefix: -m
- id: join_alignments_separated
  doc: join alignments separated by a gap shorter than INT bp (effective w/o -p) [500]
  type: long
  inputBinding:
    prefix: -g
- id: hts_cmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: a_break
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: un_srt_dots_am
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- abreak
