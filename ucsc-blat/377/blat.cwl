#!/usr/bin/env cwl-runner

baseCommand:
- blat
class: CommandLineTool
cwlVersion: v1.0
id: blat
inputs:
- doc: Output dot every N sequences to show program's progress.
  id: dots
  inputBinding:
    prefix: -dots
  type: string
- doc: Trim leading poly-T.
  id: trim_t
  inputBinding:
    prefix: -trimT
  type: boolean
- doc: Don't trim trailing poly-A.
  id: not_rima
  inputBinding:
    prefix: -noTrimA
  type: boolean
- doc: Remove poly-A tail from qSize as well as alignments in  psl output.
  id: trim_hard_a
  inputBinding:
    prefix: -trimHardA
  type: boolean
- doc: Run for fast DNA/DNA remapping - not allowing introns,  requiring high %ID.
    Query sizes must not exceed 5000.
  id: fast_map
  inputBinding:
    prefix: -fastMap
  type: boolean
- doc: 'Controls output file format.  Type is one of: psl - Default.  Tab-separated
    format, no sequence pslx - Tab-separated format with sequence axt - blastz-associated
    axt format maf - multiz-associated maf format sim4 - similar to sim4 format wublast
    - similar to wublast format blast - similar to NCBI blast format blast8- NCBI
    blast tabular format blast9 - NCBI blast tabular format with comments'
  id: out
  inputBinding:
    prefix: -out
  type: string
- doc: For high-quality mRNAs, look harder for small initial and terminal exons.  Not
    recommended for ESTs.
  id: fine
  inputBinding:
    prefix: -fine
  type: boolean
- doc: Sets maximum intron size. Default is 750000.
  id: max_intron
  inputBinding:
    prefix: -maxIntron
  type: string
- doc: Allows extension of alignment through large blocks of Ns.
  id: extend_through_n
  inputBinding:
    prefix: -extendThroughN
  type: boolean
