#!/usr/bin/env cwl-runner

baseCommand:
- genomeCoverageBed
class: CommandLineTool
cwlVersion: v1.0
id: genomecoveragebed
inputs:
- doc: Combine all positions with a depth >= max into a single bin in the histogram.
    Irrelevant for -d and -bedGraph - (INTEGER)
  id: max
  inputBinding:
    prefix: -max
  type: boolean
- doc: Scale the coverage by a constant factor. Each coverage value is multiplied
    by this factor before being reported. Useful for normalizing coverage by, e.g.,
    reads per million (RPM). - Default is 1.0; i.e., unscaled. - (FLOAT)
  id: scale
  inputBinding:
    prefix: -scale
  type: boolean
- doc: 'Adds a UCSC/Genome-Browser track line definition in the first line of the
    output. - See here for more details about track line definition: http://genome.ucsc.edu/goldenPath/help/bedgraph.html
    - NOTE: When adding a trackline definition, the output BedGraph can be easily
    uploaded to the Genome Browser as a custom track, BUT CAN NOT be converted into
    a BigWig file (w/o removing the first line).'
  id: track_line
  inputBinding:
    prefix: -trackline
  type: boolean
- doc: "Writes additional track line definition parameters in the first line. - Example:\
    \ -trackopts 'name=\"My Track\" visibility=2 color=255,30,30' Note the use of\
    \ single-quotes if you have spaces in your parameters. - (TEXT)"
  id: track_opts
  inputBinding:
    prefix: -trackopts
  type: boolean
