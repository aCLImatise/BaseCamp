class: CommandLineTool
id: blat.cwl
inputs:
- id: dots
  doc: Output dot every N sequences to show program's progress.
  type: string
  inputBinding:
    prefix: -dots
- id: trim_t
  doc: Trim leading poly-T.
  type: boolean
  inputBinding:
    prefix: -trimT
- id: not_rima
  doc: Don't trim trailing poly-A.
  type: boolean
  inputBinding:
    prefix: -noTrimA
- id: trim_hard_a
  doc: Remove poly-A tail from qSize as well as alignments in  psl output.
  type: boolean
  inputBinding:
    prefix: -trimHardA
- id: fast_map
  doc: Run for fast DNA/DNA remapping - not allowing introns,  requiring high %ID.
    Query sizes must not exceed 5000.
  type: boolean
  inputBinding:
    prefix: -fastMap
- id: out
  doc: 'Controls output file format.  Type is one of: psl - Default.  Tab-separated
    format, no sequence pslx - Tab-separated format with sequence axt - blastz-associated
    axt format maf - multiz-associated maf format sim4 - similar to sim4 format wublast
    - similar to wublast format blast - similar to NCBI blast format blast8- NCBI
    blast tabular format blast9 - NCBI blast tabular format with comments'
  type: string
  inputBinding:
    prefix: -out
- id: fine
  doc: For high-quality mRNAs, look harder for small initial and terminal exons.  Not
    recommended for ESTs.
  type: boolean
  inputBinding:
    prefix: -fine
- id: max_intron
  doc: Sets maximum intron size. Default is 750000.
  type: string
  inputBinding:
    prefix: -maxIntron
- id: extend_through_n
  doc: Allows extension of alignment through large blocks of Ns.
  type: boolean
  inputBinding:
    prefix: -extendThroughN
outputs: []
cwlVersion: v1.1
baseCommand:
- blat
