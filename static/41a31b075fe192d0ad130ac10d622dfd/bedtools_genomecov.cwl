class: CommandLineTool
id: bedtools_genomecov.cwl
inputs:
- id: max
  doc: Combine all positions with a depth >= max into a single bin in the histogram.
    Irrelevant for -d and -bedGraph - (INTEGER)
  type: boolean
  inputBinding:
    prefix: -max
- id: scale
  doc: Scale the coverage by a constant factor. Each coverage value is multiplied
    by this factor before being reported. Useful for normalizing coverage by, e.g.,
    reads per million (RPM). - Default is 1.0; i.e., unscaled. - (FLOAT)
  type: boolean
  inputBinding:
    prefix: -scale
- id: track_line
  doc: 'Adds a UCSC/Genome-Browser track line definition in the first line of the
    output. - See here for more details about track line definition: http://genome.ucsc.edu/goldenPath/help/bedgraph.html
    - NOTE: When adding a trackline definition, the output BedGraph can be easily
    uploaded to the Genome Browser as a custom track, BUT CAN NOT be converted into
    a BigWig file (w/o removing the first line).'
  type: boolean
  inputBinding:
    prefix: -trackline
- id: track_opts
  doc: "Writes additional track line definition parameters in the first line. - Example:\
    \ -trackopts 'name=\"My Track\" visibility=2 color=255,30,30' Note the use of\
    \ single-quotes if you have spaces in your parameters. - (TEXT)"
  type: boolean
  inputBinding:
    prefix: -trackopts
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- genomecov
