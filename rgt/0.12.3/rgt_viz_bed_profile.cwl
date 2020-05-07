class: CommandLineTool
id: rgt_viz_bed_profile.cwl
inputs:
- id: i
  doc: Input experimental matrix or Input BED file or Input directory which contains
    BED files
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: 'The directory name for the output files. For example, project name. (default:
    None)'
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: 'The title shown on the top of the plot and also the folder name. (default:
    bed_profile)'
  type: boolean
  inputBinding:
    prefix: -t
- id: organism
  doc: 'Define the organism. (default: None)'
  type: boolean
  inputBinding:
    prefix: -organism
- id: biotype
  doc: Define the directory for biotype BED files.
  type: boolean
  inputBinding:
    prefix: -biotype
- id: repeats
  doc: Define the directory for repeats BED files.
  type: boolean
  inputBinding:
    prefix: -repeats
- id: gen_posi
  doc: Define the directory for the generic position BED files. (exons, introns, and
    intergenic regions)
  type: boolean
  inputBinding:
    prefix: -genposi
- id: labels
  doc: Define the labels for more BED sets
  type: boolean
  inputBinding:
    prefix: -labels
- id: sources
  doc: Define the directories for more BED sets corresponding to the labels
  type: boolean
  inputBinding:
    prefix: -sources
- id: strand
  doc: Define whether to perform strand-specific comparison for each reference corresponding
    to the labels (T or F)
  type: boolean
  inputBinding:
    prefix: -strand
- id: other
  doc: Define whether to count "else" for each reference corresponding to the labels
    (T or F)
  type: boolean
  inputBinding:
    prefix: -other
- id: background
  doc: Add the background to the first row of the figures (T or F)
  type: boolean
  inputBinding:
    prefix: -background
- id: coverage
  doc: Calculate the overlapping region by coverage in bp instead of simple counting
  type: boolean
  inputBinding:
    prefix: -coverage
- id: test
  doc: test script
  type: boolean
  inputBinding:
    prefix: -test
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-viz
- bed_profile
