class: CommandLineTool
id: junctools_markup.cwl
inputs:
- id: reference
  doc: The junction file to treat as the reference
  type: string
  inputBinding:
    position: 0
- id: input
  doc: One or more junction files to compare against the reference
  type: string
  inputBinding:
    position: 1
- id: output_dir
  doc: If output dir is specified this will create output files for each input file
    with a .res extension indicating whether or not the junction was found in the
    reference. By default we write out a .res file in the same directory as the input
    file was found in.
  type: string
  inputBinding:
    prefix: --output_dir
- id: use_strand
  doc: Whether to use strand information when building keys
  type: boolean
  inputBinding:
    prefix: --use_strand
outputs: []
cwlVersion: v1.1
baseCommand:
- junctools
- markup
