class: CommandLineTool
id: gdtools_RUNFILE.cwl
inputs:
- id: mode
  doc: 'Type of command file to generate. Valid options are: breseq, breseq-apply,
    trimmomatic, trimmomatic-PE-unique, read-count. (DEFAULT=breseq)'
  type: string
  inputBinding:
    prefix: --mode
- id: executable
  doc: Alternative executable program to run.
  type: string
  inputBinding:
    prefix: --executable
- id: options
  doc: Options to be passed to the executable. These will appear first in the command
    line.
  type: string
  inputBinding:
    prefix: --options
- id: run_file
  doc: Name of the run file to be output. (DEFAULT=commands)
  type: string
  inputBinding:
    prefix: --runfile
- id: data_dir
  doc: Directory to search for genome diff files. (DEFAULT=01_Data)
  type: string
  inputBinding:
    prefix: --data-dir
- id: downloads_dir
  doc: 'Downloads directory where read and reference files are located. Defaults to
    02_Trimmed for read files if #=ADAPTSEQ tags are present. (Default = 02_Downloads;
    02_Trimmed for read files if #=ADAPTSEQ tags are present for breseq; 02_Apply
    for reference files for breseq-apply)'
  type: string
  inputBinding:
    prefix: --downloads-dir
- id: output_dir
  doc: Output directory for commands within the runfile. (Default = 03_Output for
    breseq*; = 02_Trimmed for trimmomatic*)
  type: string
  inputBinding:
    prefix: --output-dir
- id: log_dir
  doc: Directory for error log file that captures the executable's stdout and sterr.
    (Default = 04_Logs for breseq; 04_Apply_Logs for breseq-apply; 04_Trim_Logs for
    trimmomatic*)
  type: string
  inputBinding:
    prefix: --log-dir
- id: preserve_pairs
  doc: Keep track of paired and unpaired reads for trimming and using trimmed reads.
  type: boolean
  inputBinding:
    prefix: --preserve-pairs
outputs: []
cwlVersion: v1.1
baseCommand:
- gdtools
- RUNFILE
