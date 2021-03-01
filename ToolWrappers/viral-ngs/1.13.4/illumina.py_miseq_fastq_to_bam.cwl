class: CommandLineTool
id: illumina.py_miseq_fastq_to_bam.cwl
inputs:
- id: in_in_fast_q_two
  doc: Input fastq file; 2nd end of paired-end reads.
  type: long?
  inputBinding:
    prefix: --inFastq2
- id: in_run_info
  doc: Input RunInfo.xml file.
  type: File?
  inputBinding:
    prefix: --runInfo
- id: in_sequencing_center
  doc: "Name of your sequencing center (default is the\nsequencing machine ID from\
    \ the RunInfo.xml)"
  type: string?
  inputBinding:
    prefix: --sequencing_center
- id: in_jvm_memory
  doc: 'JVM virtual memory size (default: 2g)'
  type: long?
  inputBinding:
    prefix: --JVMmemory
- id: in_loglevel
  doc: 'Verboseness of output. [default: DEBUG]'
  type: string?
  inputBinding:
    prefix: --loglevel
- id: in_tmp_dir
  doc: 'Base directory for temp files. [default: /tmp]'
  type: Directory?
  inputBinding:
    prefix: --tmp_dir
- id: in_tmp_dir_keep
  doc: "Keep the tmp_dir if an exception occurs while running.\nDefault is to delete\
    \ all temp files at the end, even\nif there's a failure.\n"
  type: boolean?
  inputBinding:
    prefix: --tmp_dirKeep
- id: in_out_bam
  doc: Output BAM file.
  type: string
  inputBinding:
    position: 0
- id: in_sample_sheet
  doc: Input SampleSheet.csv file.
  type: string
  inputBinding:
    position: 1
- id: in_in_fast_q_one
  doc: Input fastq file; 1st end of paired-end reads if
  type: long
  inputBinding:
    position: 2
- id: in_paired_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- illumina.py
- miseq_fastq_to_bam
