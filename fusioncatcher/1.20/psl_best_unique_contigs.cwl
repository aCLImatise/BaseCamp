#!/usr/bin/env cwl-runner

baseCommand:
- psl_best_unique_contigs.py
class: CommandLineTool
cwlVersion: v1.0
id: psl_best_unique_contigs.py
inputs:
- doc: The input file in PSL format.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The gene name appears in the query name as for example ge=ENSG010101.
  id: same_gene
  inputBinding:
    prefix: --same_gene
  type: boolean
- doc: The output PSL file containing the contigs with the best alignment which must
    be unique.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: A input text file containing a string (which is part of a gene) for which ties
    are allowed.
  id: ties
  inputBinding:
    prefix: --ties
  type: string
- doc: A input text file containing a list of pairs of genes which overlap each other.
  id: ties_overlapping_s
  inputBinding:
    prefix: --ties-overlappings
  type: string
- doc: A text file containing a list with the names of the contigs such that the best
    of their alignments are not unique.
  id: output_multiple_alignments
  inputBinding:
    prefix: --output_multiple_alignments
  type: string
- doc: A text file containing a list with the names of the contigs such that the best
    of their alignments are unique.
  id: output_unique_alignments
  inputBinding:
    prefix: --output_unique_alignments
  type: string
- doc: The minimum length of the anchor (i.e. overhang), i.e. shortest part of a mapping
    sequence. Default is 15.
  id: anchor
  inputBinding:
    prefix: --anchor
  type: string
- doc: Number of parallel threads/processes/CPUs to be used for computations. In case
    of value 0 then the program will use all the CPUs which are found. The default
    value is 0.
  id: processes
  inputBinding:
    prefix: --processes
  type: string
- doc: The main buffer size which is passed further to GNU sort command. For more
    see '--buffer-size' of GNU sort command. Default is '80%'.
  id: buffer_size
  inputBinding:
    prefix: --buffer-size
  type: string
- doc: All alignments having strictly more mismatches will be removed. Default is
    '1000'.
  id: mismatches
  inputBinding:
    prefix: --mismatches
  type: string
- doc: The directory which should be used as temporary directory. By default is the
    OS temporary directory.
  id: tmp_dir
  inputBinding:
    prefix: --tmp_dir
  type: string
