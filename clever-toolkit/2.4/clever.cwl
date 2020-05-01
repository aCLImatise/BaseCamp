#!/usr/bin/env cwl-runner

baseCommand:
- clever
class: CommandLineTool
cwlVersion: v1.0
id: clever
inputs:
- doc: Input BAM file is sorted by position. Note that this requires alternative alignments
    to be given as XA tags (like produced by BWA, stampy, etc.).
  id: sorted
  inputBinding:
    prefix: --sorted
  type: boolean
- doc: Interprete XA tags in input BAM file. This option SHOULD be given for mappers
    writing XA tags like BWA and stampy.
  id: use_x_a
  inputBinding:
    prefix: --use_xa
  type: boolean
- doc: Use MAPQ value instead re-computing posteriors.
  id: use_mapq
  inputBinding:
    prefix: --use_mapq
  type: boolean
- doc: Number of threads to use (default=1).
  id: t
  inputBinding:
    prefix: -T
  type: string
- doc: Delete old result and working directory first (if present).
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: 'Working directory (default: <result-directory>/work).'
  id: w
  inputBinding:
    prefix: -w
  type: string
- doc: Do not (re-)compute AS tags. If given, the argument <ref.fasta(.gz)> is ignored.
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: 'Keep working directory (default: delete directory when finished).'
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: Take read groups into account (multi sample mode).
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: Additional parameters to be passed to the CLEVER core algorithm. Call "clever-core"
    without parameters for a list of options.
  id: c
  inputBinding:
    prefix: -C
  type: string
- doc: Additional parameters for postprocessing results. Call "postprocess-predictions"
    without parameters for a list of options.
  id: p
  inputBinding:
    prefix: -P
  type: string
- doc: Create a plot of internal segment size distribution (=fragment size - 2x read
    length). Also displays the estimated normal distribution (requires NumPy and matplotlib).
  id: i
  inputBinding:
    prefix: -I
  type: boolean
- doc: 'Only process given chromosome (default: all).'
  id: chromosome
  inputBinding:
    prefix: --chromosome
  type: string
