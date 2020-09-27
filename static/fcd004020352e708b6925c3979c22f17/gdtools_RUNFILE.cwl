class: CommandLineTool
id: gdtools_RUNFILE.cwl
inputs:
- id: in_mode
  doc: 'Type of command file to generate. Valid options are: breseq, breseq-apply,
    trimmomatic, trimmomatic-PE-unique, read-count. (DEFAULT=breseq)'
  type: File
  inputBinding:
    prefix: --mode
- id: in_executable
  doc: Alternative executable program to run.
  type: string
  inputBinding:
    prefix: --executable
- id: in_options
  doc: Options to be passed to the executable. These will appear first in the command
    line.
  type: string
  inputBinding:
    prefix: --options
- id: in_run_file
  doc: Name of the run file to be output. (DEFAULT=commands)
  type: File
  inputBinding:
    prefix: --runfile
- id: in_data_dir
  doc: Directory to search for genome diff files. (DEFAULT=01_Data)
  type: Directory
  inputBinding:
    prefix: --data-dir
- id: in_downloads_dir
  doc: 'Downloads directory where read and reference files are located. Defaults to
    02_Trimmed for read files if #=ADAPTSEQ tags are present. (Default = 02_Downloads;
    02_Trimmed for read files if #=ADAPTSEQ tags are present for breseq; 02_Apply
    for reference files for breseq-apply)'
  type: Directory
  inputBinding:
    prefix: --downloads-dir
- id: in_output_dir
  doc: Output directory for commands within the runfile. (Default = 03_Output for
    breseq*; = 02_Trimmed for trimmomatic*)
  type: Directory
  inputBinding:
    prefix: --output-dir
- id: in_log_dir
  doc: Directory for error log file that captures the executable's stdout and sterr.
    (Default = 04_Logs for breseq; 04_Apply_Logs for breseq-apply; 04_Trim_Logs for
    trimmomatic*)
  type: File
  inputBinding:
    prefix: --log-dir
- id: in_preserve_pairs
  doc: Keep track of paired and unpaired reads for trimming and using trimmed reads.
  type: boolean
  inputBinding:
    prefix: --preserve-pairs
- id: in_file_one_dot_gd_file_two_dot_gd_file_three_dot_gd_dot_dot_dot
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_run_file
  doc: Name of the run file to be output. (DEFAULT=commands)
  type: File
  outputBinding:
    glob: $(inputs.in_run_file)
- id: out_output_dir
  doc: Output directory for commands within the runfile. (Default = 03_Output for
    breseq*; = 02_Trimmed for trimmomatic*)
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- gdtools
- RUNFILE
