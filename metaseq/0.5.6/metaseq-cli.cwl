#!/usr/bin/env cwl-runner

baseCommand:
- metaseq-cli
class: CommandLineTool
cwlVersion: v1.0
id: metaseq-cli
inputs:
- doc: One of (avgdensity, array)
  id: action
  inputBinding:
    position: 0
  type: string
- doc: Data file to use.
  id: data_file
  inputBinding:
    position: 1
  type: string
- doc: Type of data file. One of (bam, bed, bigwig, bigbed, gff, gtf, vcf)
  id: type
  inputBinding:
    position: 2
  type: string
- doc: Windows within which to get data from `datafile`. Can be a filename of intervals
    (bam, bed, gff, gtf, vcf), or, if `--fromstring` is specified, a coord of the
    form "chrom:start-stop", which only works for a single interval')
  id: windows
  inputBinding:
    position: 3
  type: string
- doc: =8
  id: processes
  inputBinding:
    prefix: --processes
  type: boolean
- doc: Assume `windows` specifies a genomic coordinate of the form 'chrom:start-stop'
    or 'chrom:start-stop[strand]
  id: from_string
  inputBinding:
    prefix: --fromstring
  type: boolean
- doc: Number of bins to divide each window into
  id: bins
  inputBinding:
    prefix: --bins
  type: string
- doc: Results will be saved to this file; default is to print to stdout.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Create a simple plot of the results
  id: plot
  inputBinding:
    prefix: --plot
  type: boolean
- doc: Number of processes to use
  id: processes
  inputBinding:
    prefix: --processes
  type: string
- doc: Each interval in `datafile` will be extended 3' to a total of `fragmentsize`
    bp. This can have a dramatic smoothing effect.
  id: fragment_size
  inputBinding:
    prefix: --fragmentsize
  type: string
