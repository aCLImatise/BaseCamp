#!/usr/bin/env cwl-runner

baseCommand:
- seqkit
class: CommandLineTool
cwlVersion: v1.0
id: seqkit
inputs:
- doc: length of sequence prefix of the first FASTA record based on which seqkit guesses
    the sequence type (0 for whole seq) (default 10000)
  id: alphabet_guess_seq_length
  inputBinding:
    prefix: --alphabet-guess-seq-length
  type: long
- doc: FASTA head is NCBI-style, e.g. >gi|110645304|ref|NC_002516.2| Pseud...
  id: id_ncbi
  inputBinding:
    prefix: --id-ncbi
  type: boolean
- doc: regular expression for parsing ID (default "^(\\S+)\\s?")
  id: id_regexp
  inputBinding:
    prefix: --id-regexp
  type: string
- doc: file of input files list (one file per line), if given, they are appended to
    files from cli arguments
  id: in_file_list
  inputBinding:
    prefix: --infile-list
  type: string
- doc: line width when outputing FASTA format (0 for no wrap) (default 60)
  id: line_width
  inputBinding:
    prefix: --line-width
  type: long
- doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  id: out_file
  inputBinding:
    prefix: --out-file
  type: string
- doc: be quiet and do not show extra information
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: sequence type (dna|rna|protein|unlimit|auto) (for auto, it automatically detect
    by the first sequence) (default "auto")
  id: seq_type
  inputBinding:
    prefix: --seq-type
  type: string
- doc: 'number of CPUs. (default value: 1 for single-CPU PC, 2 for others) (default
    2)'
  id: threads
  inputBinding:
    prefix: --threads
  type: long
