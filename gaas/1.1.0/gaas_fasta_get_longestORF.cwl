#!/usr/bin/env cwl-runner

baseCommand:
- gaas_fasta_get_longestORF.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_fasta_get_longestorf.pl
inputs:
- doc: Nucleotide fasta file.
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: string
- doc: Minimum length of the ORF to be kept in AA (100 by default)
  id: size_min
  inputBinding:
    prefix: --size_min
  type: string
- doc: This option allows specifying the codon table to use - It expects an integer
    (1 by default = standard)
  id: table
  inputBinding:
    prefix: --table
  type: string
- doc: This option force to keep the longest ORF that contains a start codon (M).
    Bolean
  id: force_start_codon
  inputBinding:
    prefix: --force_start_codon
  type: boolean
- doc: This option force to keep the longest ORF that contains a start codon (M) and
    stop codon (*). Bolean
  id: force_complete
  inputBinding:
    prefix: --force_complete
  type: boolean
- doc: This option force to keep all the ORFs that meet the criteria. Bolean
  id: keep_all_orf
  inputBinding:
    prefix: --keep_all_orf
  type: boolean
- doc: Verbose. Useful for debugging purpose. Bolean
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Output GFF file. If no output file is specified, the output will be written
    to STDOUT.
  id: outfile
  inputBinding:
    prefix: --outfile
  type: string
- doc: description,
  id: a
  inputBinding:
    prefix: '- a'
  type: string
- doc: relevant information as possible,
  id: as
  inputBinding:
    prefix: '- as'
  type: string
- doc: used,
  id: the
  inputBinding:
    prefix: '- the'
  type: string
- doc: sample,
  id: a
  inputBinding:
    prefix: '- a'
  type: string
- doc: of the expected behaviour that is not occurring.
  id: an
  inputBinding:
    prefix: '- an'
  type: string
