class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/alfred_consensus.cwl
inputs:
- id: f
  doc: '[ --format ] arg (=bam)            input format [bam|fasta]'
  type: boolean
  inputBinding:
    prefix: -f
- id: arg__fraction
  doc: '[ --called ] arg (=0.5)            fraction of reads required for  consensus'
  type: boolean
  inputBinding:
    prefix: -d
- id: t
  doc: '[ --seqtype ] arg (=ill)           seq. type [ill|ont|pacbio|custom]'
  type: boolean
  inputBinding:
    prefix: -t
- id: arg_min_quality
  doc: '[ --mapqual ] arg (=10)            min. mapping quality'
  type: boolean
  inputBinding:
    prefix: -q
- id: arg_chr_position
  doc: '[ --position ] arg (=chr4:500500)  position to generate consensus'
  type: boolean
  inputBinding:
    prefix: -p
- id: arg_window_position
  doc: '[ --window ] arg (=5)              window around position to fetch reads'
  type: boolean
  inputBinding:
    prefix: -w
- id: consider_secondary_alignments
  doc: '[ --secondary ]                    consider secondary alignments'
  type: boolean
  inputBinding:
    prefix: -s
- id: trim_reads_window
  doc: '[ --trimreads ]                    trim reads to window'
  type: boolean
  inputBinding:
    prefix: -r
- id: arg_gap_open
  doc: '[ --gapopen ] arg (=-10)           gap open'
  type: boolean
  inputBinding:
    prefix: -g
- id: arg_gap_extension
  doc: '[ --gapext ] arg (=-1)             gap extension'
  type: boolean
  inputBinding:
    prefix: -e
- id: _arg_match
  doc: '[ --match ] arg (=5)               match'
  type: boolean
  inputBinding:
    prefix: -m
- id: _arg_mismatch
  doc: '[ --mismatch ] arg (=-4)           mismatch'
  type: boolean
  inputBinding:
    prefix: -n
- id: u
  doc: '[ --outformat ] arg (=v)           output format [v|h]'
  type: boolean
  inputBinding:
    prefix: -u
- id: arg_verticalhorizontal_alignment
  doc: '[ --alignment ] arg (="al.fa.gz")  vertical/horizontal alignment'
  type: boolean
  inputBinding:
    prefix: -a
- id: _arg_consensus
  doc: '[ --consensus ] arg (="cs.fa.gz")  consensus'
  type: boolean
  inputBinding:
    prefix: -c
- id: input_dot_bam_vertical_line_input_dot_fado_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- alfred
- consensus
