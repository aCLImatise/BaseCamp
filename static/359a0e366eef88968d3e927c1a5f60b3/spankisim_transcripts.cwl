class: CommandLineTool
id: spankisim_transcripts.cwl
inputs:
- id: o
  doc: 'Output directory (default: ./sims_out/)'
  type: string
  inputBinding:
    prefix: -o
- id: g
  doc: Reference GTF
  type: string
  inputBinding:
    prefix: -g
- id: f
  doc: Fasta file
  type: string
  inputBinding:
    prefix: -f
- id: cov
  doc: 'Coverage to sim [Default: if nothing specified, coverage=1 for all transcripts]'
  type: string
  inputBinding:
    prefix: -cov
- id: rpk
  doc: RPK to sim
  type: string
  inputBinding:
    prefix: -rpk
- id: t
  doc: File of transcripts to sim
  type: string
  inputBinding:
    prefix: -t
- id: bp
  doc: 'Read length (default: 75)'
  type: string
  inputBinding:
    prefix: -bp
- id: ends
  doc: 'Number of mates (1=single (default) or 2=paired ends) (default: 1)'
  type: string
  inputBinding:
    prefix: -ends
- id: s
  doc: 'Start selection mode (default: random)'
  type: string
  inputBinding:
    prefix: -s
- id: m
  doc: 'Error model [random,errorfree,NIST,dm3,flyheads, or custom] (default: random)'
  type: string
  inputBinding:
    prefix: -m
- id: m_dir
  doc: 'Custom error model directory (default: none)'
  type: string
  inputBinding:
    prefix: -mdir
- id: ir
  doc: 'Intron_retention [0 to 1 (eg 0.2 = 20 percent retention)] (default: 0)'
  type: string
  inputBinding:
    prefix: -ir
- id: frag
  doc: 'Fragment_size (default: 200)'
  type: string
  inputBinding:
    prefix: -frag
- id: frag_fixed
  doc: 'Fixed_fragment_size (T=True, F=False) (default: F)'
  type: string
  inputBinding:
    prefix: -fragfixed
outputs: []
cwlVersion: v1.1
baseCommand:
- spankisim_transcripts
