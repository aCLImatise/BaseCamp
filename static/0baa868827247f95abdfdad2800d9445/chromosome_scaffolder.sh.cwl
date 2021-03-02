class: CommandLineTool
id: chromosome_scaffolder.sh.cwl
inputs:
- id: in_r
  doc: MANDATORY
  type: string?
  inputBinding:
    prefix: -r
- id: in_q
  doc: MANDATORY
  type: string?
  inputBinding:
    prefix: -q
- id: in_minimum_sequence_similarity
  doc: '<minimum sequence similarity percentage: default 97>'
  type: long?
  inputBinding:
    prefix: -t
- id: in_merge_equence_alignments
  doc: '<merge equence alignments slack: default 100000>'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_nb
  doc: 'not align reads to query contigs and do not attempt to break at misassemblies:
    default off'
  type: string?
  inputBinding:
    prefix: -nb
- id: in_mandatory_nb_set
  doc: MANDATORY unless -nb set
  type: string?
  inputBinding:
    prefix: -v
- id: in_sm
  doc: '<samtools memory to use while sorting, need to have at least this much* number
    of threads PHYSICAL RAM: default 1G>'
  type: boolean?
  inputBinding:
    prefix: -sm
- id: in_hf
  doc: Pacbio HIFI reads -- speeds up the alignment
  type: string?
  inputBinding:
    prefix: -hf
- id: in_cl
  doc: '<coverage threshold for splitting at misassemblies: default 3>'
  type: boolean?
  inputBinding:
    prefix: -cl
- id: in_ch
  doc: '<repeat coverage threshold for splitting at misassemblies: default 30>'
  type: boolean?
  inputBinding:
    prefix: -ch
- id: in_fill_unaligned_gaps
  doc: 'to fill unaligned gaps with reference contigs: defalut off'
  type: string?
  inputBinding:
    prefix: -M
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chromosome_scaffolder.sh
