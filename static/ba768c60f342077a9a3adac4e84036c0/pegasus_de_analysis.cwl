class: CommandLineTool
id: pegasus_de_analysis.cwl
inputs:
- id: in_labels
  doc: Use <attr> as cluster labels.
  type: string?
  inputBinding:
    prefix: --labels
- id: in_condition
  doc: Compute DE between conditions (one vs rest) in each cluster label if specified.
  type: string?
  inputBinding:
    prefix: --condition
- id: in_de_key
  doc: 'Store DE results into varm with key = <key>. [default: de_res]'
  type: string?
  inputBinding:
    prefix: --de-key
- id: in_use_threads_threads
  doc: 'Use <threads> threads. [default: 1]'
  type: long?
  inputBinding:
    prefix: -p
- id: in_calculate_welchs_ttest
  doc: Calculate Welch's t-test.
  type: boolean?
  inputBinding:
    prefix: --t
- id: in_fisher
  doc: Calculate Fisher's exact test.
  type: boolean?
  inputBinding:
    prefix: --fisher
- id: in_temp_folder
  doc: Joblib temporary folder for memmapping numpy arrays.
  type: Directory?
  inputBinding:
    prefix: --temp-folder
- id: in_alpha
  doc: 'Control false discovery rate at <alpha>. [default: 0.05]'
  type: double?
  inputBinding:
    prefix: --alpha
- id: in_n_digits
  doc: 'Round non p-values and q-values to <ndigits> after decimal point in the excel.
    [default: 3]'
  type: double?
  inputBinding:
    prefix: --ndigits
- id: in_quiet
  doc: Do not show detailed intermediate outputs.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_single_cell_data
  doc: Single cell data with clustering calculated. DE results would be written back.
  type: string
  inputBinding:
    position: 0
- id: in_output_spreadsheet_de
  doc: Output spreadsheet with DE results.
  type: string
  inputBinding:
    position: 1
- id: in_de_results_written
  doc: DE results would be written back to the 'varm' field with name set by --de-key
    <key>.
  type: string
  inputBinding:
    position: 0
- id: in_excel_spreadsheet_containing
  doc: 'An excel spreadsheet containing DE results. Each cluster has two tabs in the
    spreadsheet. One is for up-regulated genes and the other is for down-regulated
    genes. If DE was performed on conditions within each cluster. Each cluster will
    have number of conditions tabs and each condition tab contains two spreadsheet:
    up for up-regulated genes and down for down-regulated genes.'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1
cwlVersion: v1.1
baseCommand:
- pegasus
- de_analysis
