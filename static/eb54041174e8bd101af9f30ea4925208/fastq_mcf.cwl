class: CommandLineTool
id: fastq_mcf.cwl
inputs:
- id: u
  doc: '|u     Force disable/enable Illumina PF filtering (auto)'
  type: boolean
  inputBinding:
    prefix: -U
- id: p
  doc: Phred-scale (auto)
  type: string
  inputBinding:
    prefix: -P
- id: r
  doc: Don't remove N's from the fronts/ends of reads
  type: boolean
  inputBinding:
    prefix: -R
- id: n
  doc: Don't clip, just output what would be done
  type: boolean
  inputBinding:
    prefix: -n
- id: k
  doc: Only keep clipped reads
  type: boolean
  inputBinding:
    prefix: -K
- id: s
  doc: Save all discarded reads to '.skip' files
  type: boolean
  inputBinding:
    prefix: -S
- id: c
  doc: Number of reads to use for subsampling (300k)
  type: string
  inputBinding:
    prefix: -C
- id: d
  doc: Output lots of random debugging stuff
  type: boolean
  inputBinding:
    prefix: -d
- id: cycle_adjust
  doc: CYC,AMT   Adjust cycle CYC (negative = offset from end) by amount AMT
  type: boolean
  inputBinding:
    prefix: --cycle-adjust
- id: phred_adjust
  doc: SCORE,AMT Adjust score SCORE by amount AMT
  type: boolean
  inputBinding:
    prefix: --phred-adjust
- id: phred_adjust_max
  doc: SCORE     Adjust scores > SCORE to SCOTE
  type: boolean
  inputBinding:
    prefix: --phred-adjust-max
- id: homopolymer_pct
  doc: PCT       Homopolymer filter percent (95)
  type: boolean
  inputBinding:
    prefix: --homopolymer-pct
- id: low_complex_pct
  doc: PCT       Complexity filter percent (95)
  type: boolean
  inputBinding:
    prefix: --lowcomplex-pct
- id: keep_clipped
  doc: Only keep clipped (same as -K)
  type: boolean
  inputBinding:
    prefix: --keep-clipped
- id: max_output_reads
  doc: N        Only output first N records (same as -O)
  type: boolean
  inputBinding:
    prefix: --max-output-reads
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-mcf
