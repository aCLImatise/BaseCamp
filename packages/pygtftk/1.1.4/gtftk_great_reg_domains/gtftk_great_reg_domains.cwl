class: CommandLineTool
id: gtftk_great_reg_domains.cwl
inputs:
- id: in_input_file
  doc: 'Path to the GTF file. Default to STDIN (default: <stdin>)'
  type: boolean
  inputBinding:
    prefix: --inputfile
- id: in_output_file
  doc: 'Output file. (default: <stdout>)'
  type: File
  inputBinding:
    prefix: --outputfile
- id: in_go_id
  doc: 'The GO ID (e.g GO:0003700). Default is to return all genes. (default: None)'
  type: boolean
  inputBinding:
    prefix: --go-id
- id: in_species
  doc: 'The dataset/species. Use select_by_go to get the list of species (default:
    hsapiens)'
  type: boolean
  inputBinding:
    prefix: --species
- id: in_upstream
  doc: "Extend the TSS in 5' by a given value. (default: 5000)"
  type: boolean
  inputBinding:
    prefix: --upstream
- id: in_downstream
  doc: "Extend the TSS 3' by a given value. (default: 1000)"
  type: boolean
  inputBinding:
    prefix: --downstream
- id: in_distal
  doc: 'Maximum extension in one direction (default: 1000000)'
  type: boolean
  inputBinding:
    prefix: --distal
- id: in_chrom_info
  doc: 'Tabulated two-columns file. Chromosomes as column 1, sizes as column 2 (default:
    None)'
  type: boolean
  inputBinding:
    prefix: --chrom-info
- id: in_mode
  doc: "The type of 'association rule'. (default: basal_plus_extension)"
  type: boolean
  inputBinding:
    prefix: --mode
- id: in_http_proxy
  doc: 'Use this http proxy (not tested/experimental). (default: )'
  type: boolean
  inputBinding:
    prefix: --http-proxy
- id: in_https_proxy
  doc: 'Use this https proxy (not tested/experimental). (default: )'
  type: boolean
  inputBinding:
    prefix: --https-proxy
- id: in_verbosity
  doc: 'Set output verbosity ([0-3]). (default: 0)'
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: in_no_date
  doc: 'Do not add date to output file names. (default: False)'
  type: File
  inputBinding:
    prefix: --no-date
- id: in_add_chr
  doc: "Add 'chr' to chromosome names before printing output. (default: False)"
  type: boolean
  inputBinding:
    prefix: --add-chr
- id: in_tmp_dir
  doc: 'Keep all temporary files into this folder. (default: None)'
  type: boolean
  inputBinding:
    prefix: --tmp-dir
- id: in_keep_all
  doc: 'Try to keep all temporary files even if process does not terminate normally.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep-all
- id: in_logger_file
  doc: 'Stores the arguments passed to the command into a file. (default: None)'
  type: boolean
  inputBinding:
    prefix: --logger-file
- id: in_write_message_to_file
  doc: 'Store all message into a file. (default: None)'
  type: boolean
  inputBinding:
    prefix: --write-message-to-file
- id: in_produced
  doc: a set of 'labeled' regions with the same rules as those described in GREAT
    (Genomic
  type: string
  inputBinding:
    position: 0
- id: in_argument
  doc: 'Argument:'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'Output file. (default: <stdout>)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_no_date
  doc: 'Do not add date to output file names. (default: False)'
  type: File
  outputBinding:
    glob: $(inputs.in_no_date)
cwlVersion: v1.1
baseCommand:
- gtftk
- great_reg_domains
