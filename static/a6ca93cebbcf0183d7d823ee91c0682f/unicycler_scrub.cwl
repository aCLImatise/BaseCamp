class: CommandLineTool
id: unicycler_scrub.cwl
inputs:
- id: input
  doc: These are the reads or assembly to be scrubbed (can be FASTA or FASTQ format
  type: string
  inputBinding:
    prefix: --input
- id: out
  doc: The scrubbed reads or assembly will be saved to this file (will have the same
    format as the --input file format) or use "none" to not produce an output file
  type: string
  inputBinding:
    prefix: --out
- id: reads
  doc: 'These are the reads used to scrub --input (can be FASTA or FASTQ format) (default:
    same file as --input)'
  type: string
  inputBinding:
    prefix: --reads
- id: trim
  doc: 'The aggressiveness with which the input will be trimmed (0 to 100, where 0
    is no trimming and 100 is very aggressive trimming) (default: 50)'
  type: string
  inputBinding:
    prefix: --trim
- id: split
  doc: 'The aggressiveness with which the input will be split (0 to 100, where 0 is
    no splitting and 100 is very aggressive splitting) (default: 50)'
  type: string
  inputBinding:
    prefix: --split
- id: min_split_size
  doc: 'Parts of split sequences will only be outputted if they are at least this
    big (default: 1000)'
  type: long
  inputBinding:
    prefix: --min_split_size
- id: discard_chimeras
  doc: 'If used, chimeric sequences will be discarded instead of split (default: False)'
  type: boolean
  inputBinding:
    prefix: --discard_chimeras
- id: threads
  doc: 'Number of threads used (default: 8)'
  type: string
  inputBinding:
    prefix: --threads
- id: keep_paf
  doc: 'Save the alignments to file (makes repeated runs faster because alignments
    can be loaded from file) (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_paf
- id: parameters
  doc: 'Low-level parameters (for debugging use only) (default: )'
  type: string
  inputBinding:
    prefix: --parameters
- id: verbosity
  doc: 'Level of stdout information (default: 1) 0 = no stdout, 1 = basic progress
    indicators, 2 = extra info, 3 = debugging info'
  type: string
  inputBinding:
    prefix: --verbosity
outputs: []
cwlVersion: v1.1
baseCommand:
- unicycler_scrub
