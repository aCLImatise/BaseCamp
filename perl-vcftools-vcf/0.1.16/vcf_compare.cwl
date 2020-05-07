class: CommandLineTool
id: vcf_compare.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_1vcf
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: vcf_compare
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: chr1cmp
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: apply_filters
  doc: Ignore lines where FILTER column is anything else than PASS or '.'
  type: boolean
  inputBinding:
    prefix: --apply-filters
- id: chromosomes
  doc: <list|file>       Same as -r, left for backward compatibility. Please do not
    use as it will be dropped in the future.
  type: boolean
  inputBinding:
    prefix: --chromosomes
- id: debug
  doc: Debugging information. Giving the option multiple times increases verbosity
  type: boolean
  inputBinding:
    prefix: --debug
- id: cmp_genotypes
  doc: Compare genotypes, not only positions
  type: boolean
  inputBinding:
    prefix: --cmp-genotypes
- id: ignore_indels
  doc: Exclude sites containing indels from genotype comparison
  type: boolean
  inputBinding:
    prefix: --ignore-indels
- id: name_mapping
  doc: <list|file>      Use with -g when comparing files with differing column names.
    The argument to this options is a comma-separated list or one mapping per line
    in a file. The names are colon separated and must appear in the same order as
    the files on the command line.
  type: boolean
  inputBinding:
    prefix: --name-mapping
- id: info
  doc: '[<int>]         Calculate genotype errors by INFO. Use zero based indecies
    if field has more than one value. Can be given multiple times.'
  type: string
  inputBinding:
    prefix: --INFO
- id: plot
  doc: Create plots. Multiple files (e.g. per-chromosome outputs from vcf-compare)
    can be given.
  type: string
  inputBinding:
    prefix: --plot
- id: refseq
  doc: Compare the actual sequence, not just positions. Use with -w to compare indels.
  type: File
  inputBinding:
    prefix: --refseq
- id: regions
  doc: <list|file>           Process the given regions (comma-separated list or one
    region per line in a file).
  type: boolean
  inputBinding:
    prefix: --regions
- id: samples
  doc: <list|file>           Process only the listed samples. Excluding unwanted samples
    may increase performance considerably.
  type: boolean
  inputBinding:
    prefix: --samples
- id: title
  doc: Title for graphs (see also -p)
  type: string
  inputBinding:
    prefix: --title
- id: win
  doc: In repetitive sequences, the same indel can be called at different positions.
    Consider records this far apart as matching (be it a SNP or an indel).
  type: long
  inputBinding:
    prefix: --win
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-compare
