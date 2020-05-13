class: CommandLineTool
id: metaseq_cli.cwl
inputs:
- id: action
  doc: One of (avgdensity, array)
  type: string
  inputBinding:
    position: 0
- id: data_file
  doc: Data file to use.
  type: string
  inputBinding:
    position: 1
- id: type
  doc: Type of data file. One of (bam, bed, bigwig, bigbed, gff, gtf, vcf)
  type: string
  inputBinding:
    position: 2
- id: windows
  doc: Windows within which to get data from `datafile`. Can be a filename of intervals
    (bam, bed, gff, gtf, vcf), or, if `--fromstring` is specified, a coord of the
    form "chrom:start-stop", which only works for a single interval')
  type: string
  inputBinding:
    position: 3
- id: processes
  doc: =8
  type: boolean
  inputBinding:
    prefix: --processes
- id: from_string
  doc: Assume `windows` specifies a genomic coordinate of the form 'chrom:start-stop'
    or 'chrom:start-stop[strand]
  type: boolean
  inputBinding:
    prefix: --fromstring
- id: bins
  doc: Number of bins to divide each window into
  type: string
  inputBinding:
    prefix: --bins
- id: output
  doc: Results will be saved to this file; default is to print to stdout.
  type: string
  inputBinding:
    prefix: --output
- id: plot
  doc: Create a simple plot of the results
  type: boolean
  inputBinding:
    prefix: --plot
- id: processes
  doc: Number of processes to use
  type: string
  inputBinding:
    prefix: --processes
- id: fragment_size
  doc: Each interval in `datafile` will be extended 3' to a total of `fragmentsize`
    bp. This can have a dramatic smoothing effect.
  type: string
  inputBinding:
    prefix: --fragmentsize
outputs: []
cwlVersion: v1.1
baseCommand:
- metaseq-cli
