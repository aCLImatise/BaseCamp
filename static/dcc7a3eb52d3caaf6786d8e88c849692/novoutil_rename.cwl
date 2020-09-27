class: CommandLineTool
id: novoutil_rename.cwl
inputs:
- id: in_original
  doc: "Assembly Report column name originally in the Chrom attribute.\nChoose from:\n\
    Sequence-Name, GenBank-Accn, RefSeq-Accn, UCSC-style-name\nDefault is 'RefSeq-Accn'"
  type: boolean
  inputBinding:
    prefix: --original
- id: in_id
  doc: "Report or Region column name to replace the Chrom attribute.\nChoose from\
    \ assembly_report columns:\nSequence-Name, GenBank-Accn, RefSeq-Accn, UCSC-style-name\n\
    Default is not to change the name."
  type: boolean
  inputBinding:
    prefix: --id
- id: in_excise
  doc: "Exclude some sequence types from output file\nWhere <type> is one of MT, HLA,\
    \ unplaced, unlocalised, or alt-scaffold\nAny sequence with a UCSC-Style-Name\
    \ of 'na' is also excised from the file."
  type: File
  inputBinding:
    prefix: --excise
- id: in_reorder
  doc: "Reorder sequences (Chrom) to match assembly_report.txt order.\nAssumes lines\
    \ are grouped by Chrom attribute. If not sort before using this function.\n"
  type: boolean
  inputBinding:
    prefix: --reorder
- id: in_assembly_report_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_assembly_regions_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_bed_slash_vcf_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_excise
  doc: "Exclude some sequence types from output file\nWhere <type> is one of MT, HLA,\
    \ unplaced, unlocalised, or alt-scaffold\nAny sequence with a UCSC-Style-Name\
    \ of 'na' is also excised from the file."
  type: File
  outputBinding:
    glob: $(inputs.in_excise)
cwlVersion: v1.1
baseCommand:
- novoutil
- rename
