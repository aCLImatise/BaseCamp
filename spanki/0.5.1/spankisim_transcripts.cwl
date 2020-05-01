#!/usr/bin/env cwl-runner

baseCommand:
- spankisim_transcripts
class: CommandLineTool
cwlVersion: v1.0
id: spankisim_transcripts
inputs:
- doc: 'Output directory (default: ./sims_out/)'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: Reference GTF
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: Fasta file
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: 'Coverage to sim [Default: if nothing specified, coverage=1 for all transcripts]'
  id: cov
  inputBinding:
    prefix: -cov
  type: string
- doc: RPK to sim
  id: rpk
  inputBinding:
    prefix: -rpk
  type: string
- doc: File of transcripts to sim
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: 'Read length (default: 75)'
  id: bp
  inputBinding:
    prefix: -bp
  type: string
- doc: 'Number of mates (1=single (default) or 2=paired ends) (default: 1)'
  id: ends
  inputBinding:
    prefix: -ends
  type: string
- doc: 'Start selection mode (default: random)'
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: 'Error model [random,errorfree,NIST,dm3,flyheads, or custom] (default: random)'
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: 'Custom error model directory (default: none)'
  id: m_dir
  inputBinding:
    prefix: -mdir
  type: string
- doc: 'Intron_retention [0 to 1 (eg 0.2 = 20 percent retention)] (default: 0)'
  id: ir
  inputBinding:
    prefix: -ir
  type: string
- doc: 'Fragment_size (default: 200)'
  id: frag
  inputBinding:
    prefix: -frag
  type: string
- doc: 'Fixed_fragment_size (T=True, F=False) (default: F)'
  id: frag_fixed
  inputBinding:
    prefix: -fragfixed
  type: string
