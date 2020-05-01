#!/usr/bin/env cwl-runner

baseCommand:
- calc_prob.py
class: CommandLineTool
cwlVersion: v1.0
id: calc_prob.py
inputs:
- doc: Min insert sizes for mate pairs separated by commas.
  id: mini_ns
  inputBinding:
    prefix: --minins
  type: boolean
- doc: Max insert sizes for mate pairs separated by commas.
  id: max_ins
  inputBinding:
    prefix: --maxins
  type: boolean
- doc: Orientation of the mates.
  id: orientations
  inputBinding:
    prefix: --orientations
  type: boolean
- doc: name of bowtie index for the assembly.
  id: bowtie2_index
  inputBinding:
    prefix: --bowtie2_index
  type: boolean
- doc: number of threads to use for bowtie.
  id: threads
  inputBinding:
    prefix: --threads
  type: boolean
- doc: name of the fasta file of the assembly. Used to calculate the length of the
    assembly.
  id: assembly_fast_a
  inputBinding:
    prefix: --assembly_fasta
  type: boolean
- doc: 'name of the SAM files for the corresponding reads.             '
  id: input_sam_files
  inputBinding:
    prefix: --input_sam_files
  type: boolean
- doc: write bowtie SAM output to files starting with this prefix.
  id: output_sam_file
  inputBinding:
    prefix: --output_sam_file
  type: boolean
- doc: average mate pair insert sizes.
  id: mu
  inputBinding:
    prefix: --mu
  type: boolean
- doc: standard deviation of mate pair insert sizes.
  id: sigma
  inputBinding:
    prefix: --sigma
  type: boolean
- doc: bowtie2 parameter to set the max number of alignments.
  id: max_alignments
  inputBinding:
    prefix: --max_alignments
  type: boolean
- doc: determines how much debug output.
  id: debug_level
  inputBinding:
    prefix: --debug_level
  type: boolean
