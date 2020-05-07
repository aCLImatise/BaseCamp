class: CommandLineTool
id: otu_to_tax_name.py.cwl
inputs:
- id: otu_table
  doc: Input biom file format OTU table. [REQUIRED]
  type: string
  inputBinding:
    prefix: --otu_table
- id: otu_id_fp
  doc: A single or multi-column (tab-separated) file containing the OTU IDs to be
    converted in the first column. [REQUIRED]
  type: string
  inputBinding:
    prefix: --otu_id_fp
- id: output_fp
  doc: For a list input, a new file containing a list of OTU IDs and their corresponding
    short taxonomic identifiers separated by tabs. For a BIOM file input, a new mapping
    file with all the OTU IDs replaced by the short identifier.[REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fp
- id: reverse_lookup
  doc: Get OTUIDs from genus-species OTU name.
  type: boolean
  inputBinding:
    prefix: --reverse_lookup
outputs: []
cwlVersion: v1.1
baseCommand:
- otu_to_tax_name.py
