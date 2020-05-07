class: CommandLineTool
id: metaquant.cwl
inputs:
- id: mode
  doc: Analysis mode. If taxfun is chosen, both function and taxonomy files must be
    provided
  type: string
  inputBinding:
    prefix: --mode
- id: s_amps
  doc: 'Give the column names in the intensity file that correspond to a given sample
    group. This can either be JSON formatted or be a path to a tabular file. JSON
    example of two experimental groups and two samples in each group: {"A": ["A1",
    "A2"], "B": ["B1", "B2"]}'
  type: string
  inputBinding:
    prefix: --samps
- id: int_file
  doc: Path to the file with intensity data. Must be tabular, have a peptide sequence
    column, and be raw, untransformed intensity values. Missing values can be 0, NA,
    or NaN- transformed to NA for analysis
  type: long
  inputBinding:
    prefix: --int_file
- id: pep_colname
  doc: The column name within the intensity, function, and/or taxonomy file that corresponds
    to the peptide sequences.
  type: string
  inputBinding:
    prefix: --pep_colname
- id: outfile
  doc: Output file
  type: string
  inputBinding:
    prefix: --outfile
- id: func_file
  doc: Path to file with function. The file must be tabular, with a peptide sequence
    column and either a GO-term column (named "go") and/or a COG column (named "cog").
  type: string
  inputBinding:
    prefix: --func_file
- id: ontology
  doc: Which functional terms to use. This also corresponds to the column name in
    func_file
  type: string
  inputBinding:
    prefix: --ontology
- id: obo_path
  doc: Path to full obo. If obo_path does not exist, the file will be downloaded.
  type: string
  inputBinding:
    prefix: --obo_path
- id: slim_path
  doc: Path to generic slim obo. If slim_path does not exist, the file will be downloaded.
  type: string
  inputBinding:
    prefix: --slim_path
- id: slim_down
  doc: Flag. If provided, terms are mapped from the full OBO to the slim OBO. Terms
    not in the full OBO will be skipped.
  type: boolean
  inputBinding:
    prefix: --slim_down
- id: update_obo
  doc: 'Flag. If provided, the most recent OBO file is downloaded to obo_path, and
    if slim_down, the most recent generic slim is downloaded as well. Caution: will
    overwrite anything at these locations.'
  type: boolean
  inputBinding:
    prefix: --update_obo
- id: tax_file
  doc: Path to (tabular) file with taxonomy assignments. There should be a peptide
    sequence column with name pep_colname, and a taxonomy column with name tax_colname
  type: string
  inputBinding:
    prefix: --tax_file
- id: tax_colname
  doc: Name of taxonomy column in tax file. The column must be either NCBI taxids
    (strongly preferred) or taxonomy names. Unipept name output is known to function
    well, but other formats may not work.
  type: string
  inputBinding:
    prefix: --tax_colname
- id: test
  doc: Perform t-tests on the summed intensities.FDR- corrected q-values are returned.
  type: boolean
  inputBinding:
    prefix: --test
- id: paired
  doc: If --test and --paired are provided, perform paired t-tests.
  type: boolean
  inputBinding:
    prefix: --paired
- id: threshold
  doc: Minimum number of intensities in each sample group. Anything with lower number
    of intensities will be filtered out.Only applies when testing, not to descriptive
    statistics.
  type: string
  inputBinding:
    prefix: --threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- metaquant
