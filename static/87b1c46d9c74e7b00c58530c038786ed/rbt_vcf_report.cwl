class: CommandLineTool
id: rbt_vcf_report.cwl
inputs:
- id: in_bams
  doc: "<GROUP:SAMPLE=BAM_FILE>...\nVCF files to include (multi-sample). Group is\
    \ the name that will be used in the oncoprint. There needs to be\none corresponding\
    \ BAM file for each sample of a VCF/BCF file. Please only use VCF/BCF files annotated\
    \ by VEP"
  type: boolean?
  inputBinding:
    prefix: --bams
- id: in_cells
  doc: "Set the maximum number of cells in the oncoprint per page. Lowering max-cells\
    \ should improve the performance\nof the plots in the browser. Default value is\
    \ 1000 [default: 1000]"
  type: long?
  inputBinding:
    prefix: --cells
- id: in_custom_js_files
  doc: "...\nAdd one or multiple js file (e.g. libraries) for usage in the custom-js-file.\
    \ The ordering of the arguments\nwill be the same as they will be imported"
  type: File?
  inputBinding:
    prefix: --custom-js-files
- id: in_custom_js_template
  doc: "Change the default javascript file for the table-report to a custom one to\
    \ add own plots or tables to the\nsidebar by appending these to an empty div in\
    \ the HTML template"
  type: File?
  inputBinding:
    prefix: --custom-js-template
- id: in_formats
  doc: "...\nAdd custom values from the format field to each variant as a data attribute\
    \ to access them via the custom\njavascript. All given format values will also\
    \ be inserted into the main table"
  type: string?
  inputBinding:
    prefix: --formats
- id: in_infos
  doc: "...\nAdd custom values from the info field to each variant as a data attribute\
    \ to access them via the custom\njavascript. Multiple fields starting with the\
    \ same prefix can be added by placing '*' at the end of a prefix"
  type: string?
  inputBinding:
    prefix: --infos
- id: in_max_read_depth
  doc: "Set the maximum number of cells in the oncoprint per page. Lowering max-cells\
    \ should improve the performance\nof the plots in the browser. Default value is\
    \ 1000 [default: 500]"
  type: long?
  inputBinding:
    prefix: --max-read-depth
- id: in_plot_info
  doc: "...\nAdd multiple keys from the info field of your vcf to the plots of the\
    \ first and second stage of the report"
  type: string?
  inputBinding:
    prefix: --plot-info
- id: in_threads
  doc: 'Sets the number of threads used to build the table reports [default: 0]'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_tsv
  doc: "Add a TSV file that contains one or multiple custom values for each sample\
    \ for the oncoprint. First column\nhas to be the sample name, followed by one\
    \ or more columns with custom values. Make sure you include one row\nfor each\
    \ given sample"
  type: File?
  inputBinding:
    prefix: --tsv
- id: in_v_cfs
  doc: "<GROUP=VCF_FILE>...\nVCF files to include (multi-sample). Group is the name\
    \ that will be used in the oncoprint. There needs to be\none corresponding BAM\
    \ file for each sample of a VCF/BCF file. Please only use VCF/BCF files annotated\
    \ by VEP"
  type: boolean?
  inputBinding:
    prefix: --vcfs
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rust-bio-tools:0.20.0--heda7bfa_0
cwlVersion: v1.1
baseCommand:
- rbt
- vcf-report
