class: CommandLineTool
id: alfred_consensus.cwl
inputs:
- id: in_f
  doc: '[ --format ] arg (=bam)            input format [bam|fasta]'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_arg_fraction_reads
  doc: '[ --called ] arg (=0.5)            fraction of reads required for'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_arg_min_mapping
  doc: '[ --mapqual ] arg (=10)            min. mapping quality'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_arg_chr_position
  doc: '[ --position ] arg (=chr4:500500)  position to generate consensus'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_window_fetch
  doc: '[ --window ] arg (=5)              window around position to fetch reads'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_consider_secondary_alignments
  doc: '[ --secondary ]                    consider secondary alignments'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_trim_reads_window
  doc: '[ --trimreads ]                    trim reads to window'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_gap_open
  doc: '[ --gapopen ] arg (=-10)           gap open'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_arg_gap_extension
  doc: '[ --gapext ] arg (=-1)             gap extension'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in__arg_match
  doc: '[ --match ] arg (=5)               match'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in__arg_mismatch
  doc: '[ --mismatch ] arg (=-4)           mismatch'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_u
  doc: '[ --outformat ] arg (=v)           output format [v|h]'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_arg_verticalhorizontal_alignment
  doc: '[ --alignment ] arg (="al.fa.gz")  vertical/horizontal alignment'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in__arg_consensus
  doc: '[ --consensus ] arg (="cs.fa.gz")  consensus'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_consensus
  doc: -t [ --seqtype ] arg (=ill)           seq. type [ill|ont|pacbio|custom]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/alfred:0.2.3--hf3ca161_0
cwlVersion: v1.1
baseCommand:
- alfred
- consensus
