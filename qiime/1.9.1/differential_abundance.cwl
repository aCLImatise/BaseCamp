class: CommandLineTool
id: differential_abundance.py.cwl
inputs:
- id: verbose
  doc: 'Print information during execution -- useful for debugging [default: False]'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input_path
  doc: path to the input BIOM file (e.g., the output from OTU picking) or directory
    containing input BIOM files for batch processing [REQUIRED if not passing -l]
  type: string
  inputBinding:
    prefix: --input_path
- id: out_path
  doc: output filename for single file operation, or output directory for batch processing
    [REQUIRED if not passing -l]
  type: string
  inputBinding:
    prefix: --out_path
- id: algorithm
  doc: 'differential abundance algorithm to apply to input BIOM table(s) [default:
    metagenomeSeq_fitZIG] Available options are: metagenomeSeq_fitZIG, DESeq2_nbinom'
  type: string
  inputBinding:
    prefix: --algorithm
- id: mapping_file_path
  doc: path to mapping file [REQUIRED if not passing -l]
  type: string
  inputBinding:
    prefix: --mapping_file_path
- id: mapping_file_category
  doc: mapping file category [REQUIRED if not passing -l]
  type: string
  inputBinding:
    prefix: --mapping_file_category
- id: mapping_file_subcategory_1
  doc: mapping file subcategory [REQUIRED if not passing -l]
  type: string
  inputBinding:
    prefix: --mapping_file_subcategory_1
- id: mapping_file_subcategory_2
  doc: mapping file subcategory [REQUIRED if not passing -l]
  type: string
  inputBinding:
    prefix: --mapping_file_subcategory_2
- id: list_algorithms
  doc: 'show available differential abundance algorithms and exit [default: False]'
  type: boolean
  inputBinding:
    prefix: --list_algorithms
- id: deseq2_diagnostic_plots
  doc: 'show a MA plot - y axis: log2 fold change, x axis: average size factor normalized
    OTU value. Also show a Dispersion Estimate plot - visualize the fitted dispersion
    vs. mean relationship [default: False]'
  type: boolean
  inputBinding:
    prefix: --DESeq2_diagnostic_plots
outputs: []
cwlVersion: v1.1
baseCommand:
- differential_abundance.py
