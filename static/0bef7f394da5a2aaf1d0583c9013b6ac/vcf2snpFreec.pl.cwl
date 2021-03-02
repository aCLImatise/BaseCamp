class: CommandLineTool
id: vcf2snpFreec.pl.cwl
inputs:
- id: in_file_dbsnp_file
  doc: file                   dbSNP vcf file
  type: boolean?
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vcf2snpFreec.pl
