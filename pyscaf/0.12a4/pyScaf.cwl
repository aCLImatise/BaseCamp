class: CommandLineTool
id: pyScaf.cwl
inputs:
- id: fast_a
  doc: assembly FASTA file
  type: string
  inputBinding:
    prefix: --fasta
- id: output
  doc: output stream [scaffolds.fa]
  type: string
  inputBinding:
    prefix: --output
- id: threads
  doc: max no. of threads to run [4]
  type: string
  inputBinding:
    prefix: --threads
- id: log
  doc: output log to [stderr]
  type: string
  inputBinding:
    prefix: --log
- id: dotplot
  doc: '{,png,gif,pdf} generate dotplot as [png]'
  type: boolean
  inputBinding:
    prefix: --dotplot
- id: reference
  doc: reference FastA file
  type: string
  inputBinding:
    prefix: --reference
- id: identity
  doc: min. identity [0.33]
  type: string
  inputBinding:
    prefix: --identity
- id: overlap
  doc: min. overlap  [0.66]
  type: string
  inputBinding:
    prefix: --overlap
- id: max_gap
  doc: max. distance between adjacent contigs [0.01 * assembly_size]
  type: long
  inputBinding:
    prefix: --maxgap
- id: no_rearrangements
  doc: high identity mode (rearrangements not allowed)
  type: boolean
  inputBinding:
    prefix: --norearrangements
- id: long_reads
  doc: FastQ/FastA file(s) with PacBio/ONT reads
  type: string[]
  inputBinding:
    prefix: --longreads
- id: fast_q
  doc: FASTQ PE/MP files
  type: string[]
  inputBinding:
    prefix: --fastq
- id: joins
  doc: min pairs to join contigs [5]
  type: string
  inputBinding:
    prefix: --joins
- id: link_ratio
  doc: max link ratio between two best contig pairs [0.7]
  type: string
  inputBinding:
    prefix: --linkratio
- id: load
  doc: align subset of reads [0.2]
  type: string
  inputBinding:
    prefix: --load
- id: mapq
  doc: min mapping quality [10]
  type: string
  inputBinding:
    prefix: --mapq
outputs: []
cwlVersion: v1.1
baseCommand:
- pyScaf
