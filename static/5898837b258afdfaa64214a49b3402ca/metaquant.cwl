class: CommandLineTool
id: metaquant.cwl
inputs:
- id: in_mode
  doc: "Analysis mode. If taxfun is chosen, both function and\ntaxonomy files must\
    \ be provided"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_s_amps
  doc: "Give the column names in the intensity file that\ncorrespond to a given sample\
    \ group. This can either be\nJSON formatted or be a path to a tabular file. JSON\n\
    example of two experimental groups and two samples in\neach group: {\"A\": [\"\
    A1\", \"A2\"], \"B\": [\"B1\", \"B2\"]}"
  type: File?
  inputBinding:
    prefix: --samps
- id: in_int_file
  doc: "Path to the file with intensity data. Must be tabular,\nhave a peptide sequence\
    \ column, and be raw,\nuntransformed intensity values. Missing values can be\n\
    0, NA, or NaN- transformed to NA for analysis"
  type: long?
  inputBinding:
    prefix: --int_file
- id: in_pep_colname
  doc: "The column name within the intensity, function, and/or\ntaxonomy file that\
    \ corresponds to the peptide\nsequences."
  type: File?
  inputBinding:
    prefix: --pep_colname
- id: in_outfile
  doc: Output file
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_func_file
  doc: "Path to file with function. The file must be tabular,\nwith a peptide sequence\
    \ column and either a GO-term\ncolumn (named \"go\") and/or a COG column (named\
    \ \"cog\")."
  type: File?
  inputBinding:
    prefix: --func_file
- id: in_ontology
  doc: "Which functional terms to use. This also corresponds\nto the column name in\
    \ func_file"
  type: string?
  inputBinding:
    prefix: --ontology
- id: in_obo_path
  doc: "Path to full obo. If obo_path does not exist, the file\nwill be downloaded."
  type: File?
  inputBinding:
    prefix: --obo_path
- id: in_slim_path
  doc: "Path to generic slim obo. If slim_path does not exist,\nthe file will be downloaded."
  type: File?
  inputBinding:
    prefix: --slim_path
- id: in_slim_down
  doc: "Flag. If provided, terms are mapped from the full OBO\nto the slim OBO. Terms\
    \ not in the full OBO will be\nskipped."
  type: boolean?
  inputBinding:
    prefix: --slim_down
- id: in_update_obo
  doc: "Flag. If provided, the most recent OBO file is\ndownloaded to obo_path, and\
    \ if slim_down, the most\nrecent generic slim is downloaded as well. Caution:\n\
    will overwrite anything at these locations."
  type: boolean?
  inputBinding:
    prefix: --update_obo
- id: in_tax_file
  doc: "Path to (tabular) file with taxonomy assignments.\nThere should be a peptide\
    \ sequence column with name\npep_colname, and a taxonomy column with name\ntax_colname"
  type: File?
  inputBinding:
    prefix: --tax_file
- id: in_tax_colname
  doc: "Name of taxonomy column in tax file. The column must\nbe either NCBI taxids\
    \ (strongly preferred) or taxonomy\nnames. Unipept name output is known to function\
    \ well,\nbut other formats may not work."
  type: File?
  inputBinding:
    prefix: --tax_colname
- id: in_test
  doc: "Perform t-tests on the summed intensities.FDR-\ncorrected q-values are returned."
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_paired
  doc: If --test and --paired are provided, perform paired
  type: boolean?
  inputBinding:
    prefix: --paired
- id: in_t_tests_dot
  doc: --threshold THRESHOLD
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: Output file
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_tax_colname
  doc: "Name of taxonomy column in tax file. The column must\nbe either NCBI taxids\
    \ (strongly preferred) or taxonomy\nnames. Unipept name output is known to function\
    \ well,\nbut other formats may not work."
  type: File?
  outputBinding:
    glob: $(inputs.in_tax_colname)
hints: []
cwlVersion: v1.1
baseCommand:
- metaquant
