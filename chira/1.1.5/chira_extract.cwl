class: CommandLineTool
id: chira_extract.py.cwl
inputs:
- id: l
  doc: ', --loci           Input BED file with alignments (default: None)'
  type: boolean
  inputBinding:
    prefix: -l
- id: o
  doc: ', --out            Path to output directory (default: None)'
  type: boolean
  inputBinding:
    prefix: -o
- id: g
  doc: ', --gtf            Annotation GTF file (default: None)'
  type: boolean
  inputBinding:
    prefix: -g
- id: p
  doc: ', --processes      Number of processes to use (default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: tc
  doc: ', --tpm_cutoff    Transcripts with less than this percentile TPMs will be
    discarded in the final output. [0-1.0] (default: 0)'
  type: boolean
  inputBinding:
    prefix: -tc
- id: sc
  doc: ', --score_cutoff  Hybrids with less than this score will be discarded in the
    final output. [0-1.0] (default: 0.0)'
  type: boolean
  inputBinding:
    prefix: -sc
- id: co
  doc: ', --chimeric_overlap  Maximum number of bases allowed between the chimeric
    segments of a read (default: 2)'
  type: boolean
  inputBinding:
    prefix: -co
- id: hybridize
  doc: 'Hybridize the predicted chimeras (default: False)'
  type: boolean
  inputBinding:
    prefix: --hybridize
- id: f1
  doc: ', --ref_fasta1    First prioroty fasta file (default: None)'
  type: boolean
  inputBinding:
    prefix: -f1
- id: f2
  doc: ', --ref_fasta2    second priority fasta file (default: None)'
  type: boolean
  inputBinding:
    prefix: -f2
- id: f
  doc: ', --ref            Reference fasta file (default: None)'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- chira_extract.py
