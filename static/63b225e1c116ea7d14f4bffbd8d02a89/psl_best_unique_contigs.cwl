class: CommandLineTool
id: psl_best_unique_contigs.py.cwl
inputs:
- id: input
  doc: The input file in PSL format.
  type: string
  inputBinding:
    prefix: --input
- id: same_gene
  doc: The gene name appears in the query name as for example ge=ENSG010101.
  type: boolean
  inputBinding:
    prefix: --same_gene
- id: output
  doc: The output PSL file containing the contigs with the best alignment which must
    be unique.
  type: string
  inputBinding:
    prefix: --output
- id: ties
  doc: A input text file containing a string (which is part of a gene) for which ties
    are allowed.
  type: string
  inputBinding:
    prefix: --ties
- id: ties_overlapping_s
  doc: A input text file containing a list of pairs of genes which overlap each other.
  type: string
  inputBinding:
    prefix: --ties-overlappings
- id: output_multiple_alignments
  doc: A text file containing a list with the names of the contigs such that the best
    of their alignments are not unique.
  type: string
  inputBinding:
    prefix: --output_multiple_alignments
- id: output_unique_alignments
  doc: A text file containing a list with the names of the contigs such that the best
    of their alignments are unique.
  type: string
  inputBinding:
    prefix: --output_unique_alignments
- id: anchor
  doc: The minimum length of the anchor (i.e. overhang), i.e. shortest part of a mapping
    sequence. Default is 15.
  type: string
  inputBinding:
    prefix: --anchor
- id: processes
  doc: Number of parallel threads/processes/CPUs to be used for computations. In case
    of value 0 then the program will use all the CPUs which are found. The default
    value is 0.
  type: string
  inputBinding:
    prefix: --processes
- id: buffer_size
  doc: The main buffer size which is passed further to GNU sort command. For more
    see '--buffer-size' of GNU sort command. Default is '80%'.
  type: string
  inputBinding:
    prefix: --buffer-size
- id: mismatches
  doc: All alignments having strictly more mismatches will be removed. Default is
    '1000'.
  type: string
  inputBinding:
    prefix: --mismatches
- id: tmp_dir
  doc: The directory which should be used as temporary directory. By default is the
    OS temporary directory.
  type: string
  inputBinding:
    prefix: --tmp_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- psl_best_unique_contigs.py
