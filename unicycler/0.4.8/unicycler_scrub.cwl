#!/usr/bin/env cwl-runner

baseCommand:
- unicycler_scrub
class: CommandLineTool
cwlVersion: v1.0
id: unicycler_scrub
inputs:
- doc: These are the reads or assembly to be scrubbed (can be FASTA or FASTQ format
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The scrubbed reads or assembly will be saved to this file (will have the same
    format as the --input file format) or use "none" to not produce an output file
  id: out
  inputBinding:
    prefix: --out
  type: string
- doc: 'These are the reads used to scrub --input (can be FASTA or FASTQ format) (default:
    same file as --input)'
  id: reads
  inputBinding:
    prefix: --reads
  type: string
- doc: 'The aggressiveness with which the input will be trimmed (0 to 100, where 0
    is no trimming and 100 is very aggressive trimming) (default: 50)'
  id: trim
  inputBinding:
    prefix: --trim
  type: string
- doc: 'The aggressiveness with which the input will be split (0 to 100, where 0 is
    no splitting and 100 is very aggressive splitting) (default: 50)'
  id: split
  inputBinding:
    prefix: --split
  type: string
- doc: 'Parts of split sequences will only be outputted if they are at least this
    big (default: 1000)'
  id: min_split_size
  inputBinding:
    prefix: --min_split_size
  type: long
- doc: 'If used, chimeric sequences will be discarded instead of split (default: False)'
  id: discard_chimeras
  inputBinding:
    prefix: --discard_chimeras
  type: boolean
- doc: 'Number of threads used (default: 8)'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: 'Save the alignments to file (makes repeated runs faster because alignments
    can be loaded from file) (default: False)'
  id: keep_paf
  inputBinding:
    prefix: --keep_paf
  type: boolean
- doc: 'Low-level parameters (for debugging use only) (default: )'
  id: parameters
  inputBinding:
    prefix: --parameters
  type: string
- doc: 'Level of stdout information (default: 1) 0 = no stdout, 1 = basic progress
    indicators, 2 = extra info, 3 = debugging info'
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: string
