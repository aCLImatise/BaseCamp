class: CommandLineTool
id: phyloseq_composition.py.cwl
inputs:
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_var_exp
  doc: The experiment variable used to split plot.
  type: string?
  inputBinding:
    prefix: --varExp
- id: in_taxa_rank_one
  doc: "Select taxonomic rank name to subset your data. [ex:\nKingdom]"
  type: long?
  inputBinding:
    prefix: --taxaRank1
- id: in_s_one
  doc: "[TAXASET1 [TAXASET1 ...]], --taxaSet1 [TAXASET1 [TAXASET1 ...]]\nSelect taxon\
    \ name among taxaRank1 to subset your data.\n[ex: Bacteria]"
  type: boolean?
  inputBinding:
    prefix: -s1
- id: in_taxa_rank_two
  doc: "Select sub taxonomic rank name to aggregate your data.\n[ex: Phylum]\""
  type: long?
  inputBinding:
    prefix: --taxaRank2
- id: in_number_of_tax_a
  doc: "The number of the most abundant taxa to keep at\ntaxaRank2. [ex: 9]\""
  type: long?
  inputBinding:
    prefix: --numberOfTaxa
- id: in_r_data
  doc: "The path of RData file containing a phyloseq object-\nthe result of FROGS\
    \ Phyloseq Import Data"
  type: File?
  inputBinding:
    prefix: --rdata
- id: in_html
  doc: "The HTML file containing the graphs. [Default:\nphyloseq_composition.nb.html]"
  type: File?
  inputBinding:
    prefix: --html
- id: in_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File?
  inputBinding:
    prefix: --log-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/frogs:3.2.1--py37_0
cwlVersion: v1.1
baseCommand:
- phyloseq_composition.py
