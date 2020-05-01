#!/usr/bin/env cwl-runner

baseCommand:
- pullseq
class: CommandLineTool
cwlVersion: v1.0
id: pullseq
inputs:
- doc: ',       Input fasta/fastq file (required)'
  id: input
  inputBinding:
    prefix: --input
  type: boolean
- doc: ',       File of header id names to search for'
  id: names
  inputBinding:
    prefix: --names
  type: boolean
- doc: ', Use STDIN for header id names'
  id: names_stdin
  inputBinding:
    prefix: --names_stdin
  type: boolean
- doc: ',       Regular expression to match (PERL compatible; always case-insensitive)'
  id: regex
  inputBinding:
    prefix: --regex
  type: boolean
- doc: ',         Minimum sequence length'
  id: min
  inputBinding:
    prefix: --min
  type: boolean
- doc: ',         Maximum sequence length'
  id: max
  inputBinding:
    prefix: --max
  type: boolean
- doc: ',      Sequence characters per line (default 50)'
  id: length
  inputBinding:
    prefix: --length
  type: boolean
- doc: ',     Convert input to fastq/fasta (e.g. if input is fastq, output will be
    fasta)'
  id: convert
  inputBinding:
    prefix: --convert
  type: boolean
- doc: ',     ASCII code to use for fasta->fastq quality conversions'
  id: quality
  inputBinding:
    prefix: --quality
  type: boolean
- doc: ',    Exclude the header id names in the list (-n)'
  id: excluded
  inputBinding:
    prefix: --excluded
  type: boolean
- doc: ",       Just count the possible output, but don't write it"
  id: count
  inputBinding:
    prefix: --count
  type: boolean
- doc: ',     Print extra details during the run'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
