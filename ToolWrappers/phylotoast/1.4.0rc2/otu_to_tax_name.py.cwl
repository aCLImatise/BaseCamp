class: CommandLineTool
id: otu_to_tax_name.py.cwl
inputs:
- id: in_otu_table
  doc: Input biom file format OTU table. [REQUIRED]
  type: File
  inputBinding:
    prefix: --otu_table
- id: in_otu_id_fp
  doc: "A single or multi-column (tab-separated) file\ncontaining the OTU IDs to be\
    \ converted in the first\ncolumn. [REQUIRED]"
  type: File
  inputBinding:
    prefix: --otu_id_fp
- id: in_output_fp
  doc: "For a list input, a new file containing a list of OTU\nIDs and their corresponding\
    \ short taxonomic\nidentifiers separated by tabs. For a BIOM file input,\na new\
    \ mapping file with all the OTU IDs replaced by\nthe short identifier.[REQUIRED]"
  type: File
  inputBinding:
    prefix: --output_fp
- id: in_reverse_lookup
  doc: Get OTUIDs from genus-species OTU name.
  type: boolean
  inputBinding:
    prefix: --reverse_lookup
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- otu_to_tax_name.py
