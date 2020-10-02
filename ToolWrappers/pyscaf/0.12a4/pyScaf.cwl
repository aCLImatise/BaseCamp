class: CommandLineTool
id: pyScaf.cwl
inputs:
- id: in_fast_a
  doc: assembly FASTA file
  type: File
  inputBinding:
    prefix: --fasta
- id: in_output
  doc: output stream [scaffolds.fa]
  type: string
  inputBinding:
    prefix: --output
- id: in_threads
  doc: max no. of threads to run [4]
  type: long
  inputBinding:
    prefix: --threads
- id: in_log
  doc: output log to [stderr]
  type: string
  inputBinding:
    prefix: --log
- id: in_dotplot
  doc: "{,png,gif,pdf}\ngenerate dotplot as [png]"
  type: boolean
  inputBinding:
    prefix: --dotplot
- id: in_reference
  doc: reference FastA file
  type: File
  inputBinding:
    prefix: --reference
- id: in_identity
  doc: min. identity [0.33]
  type: long
  inputBinding:
    prefix: --identity
- id: in_overlap
  doc: min. overlap  [0.66]
  type: long
  inputBinding:
    prefix: --overlap
- id: in_max_gap
  doc: max. distance between adjacent contigs [0.01 * assembly_size]
  type: long
  inputBinding:
    prefix: --maxgap
- id: in_no_rearrangements
  doc: high identity mode (rearrangements not allowed)
  type: boolean
  inputBinding:
    prefix: --norearrangements
- id: in_long_reads
  doc: FastQ/FastA file(s) with PacBio/ONT reads
  type: string[]
  inputBinding:
    prefix: --longreads
- id: in_fast_q
  doc: FASTQ PE/MP files
  type: string[]
  inputBinding:
    prefix: --fastq
- id: in_joins
  doc: min pairs to join contigs [5]
  type: long
  inputBinding:
    prefix: --joins
- id: in_link_ratio
  doc: max link ratio between two best contig pairs [0.7]
  type: long
  inputBinding:
    prefix: --linkratio
- id: in_load
  doc: align subset of reads [0.2]
  type: double
  inputBinding:
    prefix: --load
- id: in_mapq
  doc: min mapping quality [10]
  type: long
  inputBinding:
    prefix: --mapq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pyScaf
