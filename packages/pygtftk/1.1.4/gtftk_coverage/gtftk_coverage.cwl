class: CommandLineTool
id: gtftk_coverage.cwl
inputs:
- id: in_input_file
  doc: 'The input GTF/BED file. Only GTF file if <stdin> is used. (default: <stdin>)'
  type: boolean
  inputBinding:
    prefix: --inputfile
- id: in_output_file
  doc: 'Output file. (default: <stdout>)'
  type: File
  inputBinding:
    prefix: --outputfile
- id: in_chrom_info
  doc: 'Tabulated two-columns file. Chromosomes as column 1 and sizes as column 2
    (default: None)'
  type: boolean
  inputBinding:
    prefix: --chrom-info
- id: in_upstream
  doc: "Extend the regions in 5' by a given value (int). (default: 0)"
  type: boolean
  inputBinding:
    prefix: --upstream
- id: in_downstream
  doc: "Extend the regions in 3' by a given value (int). (default: 0)"
  type: boolean
  inputBinding:
    prefix: --downstream
- id: in_nb_window
  doc: 'Split the region into w bins (see -n). (default: 1)'
  type: boolean
  inputBinding:
    prefix: --nb-window
- id: in_nb_proc
  doc: 'Use this many threads to compute coverage. (default: 1)'
  type: boolean
  inputBinding:
    prefix: --nb-proc
- id: in_ft_type
  doc: 'Region in which coverage is to be computed (promoter, intron, intergenic,
    tts or any feature defined in the column 3 of the GTF). (default: promoter)'
  type: boolean
  inputBinding:
    prefix: --ft-type
- id: in_labels
  doc: 'Bigwig labels. (default: None)'
  type: boolean
  inputBinding:
    prefix: --labels
- id: in_name_column
  doc: 'Use this ids to compute the name (4th column in bed output). (default: transcript_id)'
  type: boolean
  inputBinding:
    prefix: --name-column
- id: in_pseudo_count
  doc: 'A pseudo-count to add in case count is equal to 0. (default: 1)'
  type: boolean
  inputBinding:
    prefix: --pseudo-count
- id: in_n_highest
  doc: 'For each bigwig, use the n windows with higher values to compute coverage.
    (default: None)'
  type: boolean
  inputBinding:
    prefix: --n-highest
- id: in_matrix_out
  doc: 'Matrix output format. Bigwigs as column names and features as rows. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --matrix-out
- id: in_zero_to_na
  doc: 'Use NA not zero when region is undefined in bigwig or below window size. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --zero-to-na
- id: in_key_name
  doc: 'If gtf format is requested, the name of the key. (default: cov)'
  type: boolean
  inputBinding:
    prefix: --key-name
- id: in_stat
  doc: 'The statistics to be computed for each region. (default: mean)'
  type: boolean
  inputBinding:
    prefix: --stat
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
- id: in_arguments
  doc: 'Arguments:'
  type: long
  inputBinding:
    position: 0
- id: in_bw_list
  doc: A list of Bigwig file (last argument).
  type: string
  inputBinding:
    position: 1
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
- coverage
