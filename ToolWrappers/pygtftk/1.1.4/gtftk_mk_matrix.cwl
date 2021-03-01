class: CommandLineTool
id: gtftk_mk_matrix.cwl
inputs:
- id: in_input_file
  doc: 'A GTF file or bed file. A GTF if <stdin>. (default: <stdin>)'
  type: boolean?
  inputBinding:
    prefix: --inputfile
- id: in_bigwig_list
  doc: 'A list of Bigwig files (last argument). (default: None)'
  type: boolean?
  inputBinding:
    prefix: --bigwiglist
- id: in_output_file
  doc: 'Output file name (.zip extension will be added). (default: <stdout>)'
  type: File?
  inputBinding:
    prefix: --outputfile
- id: in_labels
  doc: 'Bigwig labels (i.e short name version for plotting). (default: None)'
  type: boolean?
  inputBinding:
    prefix: --labels
- id: in_ft_type
  doc: 'If input is a GTF, the region to analyse. (default: promoter)'
  type: boolean?
  inputBinding:
    prefix: --ft-type
- id: in_pseudo_count
  doc: 'Pseudo-count to add to all values. (default: 0)'
  type: boolean?
  inputBinding:
    prefix: --pseudo-count
- id: in_upstream
  doc: "Extend the region of interest in 5' by a given value. (default: 1000)"
  type: boolean?
  inputBinding:
    prefix: --upstream
- id: in_downstream
  doc: "Extend the region of interest in 3' by a given value. (default: 1000)"
  type: boolean?
  inputBinding:
    prefix: --downstream
- id: in_chrom_info
  doc: 'Tabulated file (chr as column 1, sizes as column 2.) (default: None)'
  type: boolean?
  inputBinding:
    prefix: --chrom-info
- id: in_bin_nb
  doc: 'Split the region into w bins. (default: 100)'
  type: boolean?
  inputBinding:
    prefix: --bin-nb
- id: in_nb_proc
  doc: 'Use this many threads to compute coverage. (default: 1)'
  type: boolean?
  inputBinding:
    prefix: --nb-proc
- id: in_bin_around_frac
  doc: "Fraction of bins used in 5' and 3' regions. (default: 0.1)"
  type: boolean?
  inputBinding:
    prefix: --bin-around-frac
- id: in_zero_to_na
  doc: 'Use NA not zero when region is undefined in bigwig. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --zero-to-na
- id: in_no_stranded
  doc: 'The bins should not be oriented relative to strand. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --no-stranded
- id: in_verbosity
  doc: 'Set output verbosity ([0-3]). (default: 0)'
  type: boolean?
  inputBinding:
    prefix: --verbosity
- id: in_no_date
  doc: 'Do not add date to output file names. (default: False)'
  type: File?
  inputBinding:
    prefix: --no-date
- id: in_add_chr
  doc: "Add 'chr' to chromosome names before printing output. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --add-chr
- id: in_tmp_dir
  doc: 'Keep all temporary files into this folder. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --tmp-dir
- id: in_keep_all
  doc: 'Try to keep all temporary files even if process does not terminate normally.
    (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep-all
- id: in_logger_file
  doc: 'Stores the arguments passed to the command into a file. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --logger-file
- id: in_write_message_to_file
  doc: 'Store all message into a file. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --write-message-to-file
- id: in_arguments
  doc: 'Arguments:'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'Output file name (.zip extension will be added). (default: <stdout>)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_no_date
  doc: 'Do not add date to output file names. (default: False)'
  type: File?
  outputBinding:
    glob: $(inputs.in_no_date)
hints: []
cwlVersion: v1.1
baseCommand:
- gtftk
- mk_matrix
