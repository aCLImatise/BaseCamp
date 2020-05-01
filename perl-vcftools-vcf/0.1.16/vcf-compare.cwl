#!/usr/bin/env cwl-runner

baseCommand:
- vcf-compare
class: CommandLineTool
cwlVersion: v1.0
id: vcf-compare
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: file_1vcf
  inputBinding:
    position: 1
  type: File
- doc: ''
  id: vcf_compare
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: chr1cmp
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: options
  inputBinding:
    position: 4
  type: string
- doc: Ignore lines where FILTER column is anything else than PASS or '.'
  id: apply_filters
  inputBinding:
    prefix: --apply-filters
  type: boolean
- doc: <list|file>       Same as -r, left for backward compatibility. Please do not
    use as it will be dropped in the future.
  id: chromosomes
  inputBinding:
    prefix: --chromosomes
  type: boolean
- doc: Debugging information. Giving the option multiple times increases verbosity
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: Compare genotypes, not only positions
  id: cmp_genotypes
  inputBinding:
    prefix: --cmp-genotypes
  type: boolean
- doc: Exclude sites containing indels from genotype comparison
  id: ignore_indels
  inputBinding:
    prefix: --ignore-indels
  type: boolean
- doc: <list|file>      Use with -g when comparing files with differing column names.
    The argument to this options is a comma-separated list or one mapping per line
    in a file. The names are colon separated and must appear in the same order as
    the files on the command line.
  id: name_mapping
  inputBinding:
    prefix: --name-mapping
  type: boolean
- doc: '[<int>]         Calculate genotype errors by INFO. Use zero based indecies
    if field has more than one value. Can be given multiple times.'
  id: info
  inputBinding:
    prefix: --INFO
  type: string
- doc: Create plots. Multiple files (e.g. per-chromosome outputs from vcf-compare)
    can be given.
  id: plot
  inputBinding:
    prefix: --plot
  type: string
- doc: Compare the actual sequence, not just positions. Use with -w to compare indels.
  id: refseq
  inputBinding:
    prefix: --refseq
  type: File
- doc: <list|file>           Process the given regions (comma-separated list or one
    region per line in a file).
  id: regions
  inputBinding:
    prefix: --regions
  type: boolean
- doc: <list|file>           Process only the listed samples. Excluding unwanted samples
    may increase performance considerably.
  id: samples
  inputBinding:
    prefix: --samples
  type: boolean
- doc: Title for graphs (see also -p)
  id: title
  inputBinding:
    prefix: --title
  type: string
- doc: In repetitive sequences, the same indel can be called at different positions.
    Consider records this far apart as matching (be it a SNP or an indel).
  id: win
  inputBinding:
    prefix: --win
  type: long
