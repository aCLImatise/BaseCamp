class: CommandLineTool
id: stag_join.pl.cwl
inputs:
- id: stag_join
  doc: -w xml country/city_id=capital/capital_id countries.xml capitals.xml
  type: string
  inputBinding:
    position: 0
- id: stag_join
  doc: -w itext gene/tax_id=species/tax_id genedb.itext speciesdb.itext
  type: string
  inputBinding:
    position: 1
- id: p
  doc: '|parser FORMAT FORMAT is one of xml, sxpr or itext, or the name of a perl
    module xml assumed as default'
  type: boolean
  inputBinding:
    prefix: -p
- id: w
  doc: '|writer FORMAT FORMAT is one of xml, sxpr or itext, or the name of a perl
    module'
  type: boolean
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- stag-join.pl
