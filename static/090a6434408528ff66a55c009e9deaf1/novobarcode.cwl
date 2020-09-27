class: CommandLineTool
id: novobarcode.cwl
inputs:
- id: in_specifies_tag_file
  doc: Specifies the bar code tag file.
  type: File
  inputBinding:
    prefix: -b
- id: in_sets_name_reads
  doc: Sets folder name for demux'd reads. Default ./
  type: Directory
  inputBinding:
    prefix: -d
- id: in_specifies_read_files
  doc: '[file2]    Specifies read file(s). Two filenames if paired end.'
  type: File
  inputBinding:
    prefix: -f
- id: in_specifies_qseq_file
  doc: Specifies the qseq format file for the index tag reads.
  type: File
  inputBinding:
    prefix: -i
- id: in_specifies_format_refer
  doc: "[option]  Specifies a read file format, refer to manual for full list of options.\n\
    For Fastq '_sequence.txt' files from Illumina\nCASAVA 1.3 to 1.7 use -F ILMFQ.\n\
    CASAVA 1.8 and later use -F ILM1.8\nPre 1.3 use -F SLXFQ\nQSEQ & ILM1.8 files\
    \ include reads that have been flagged as low quality by the\nbase caller. Specify\
    \ how these are processed with the following options:"
  type: File
  inputBinding:
    prefix: -F
- id: in_il_q_use
  doc: Ignore QC flag and classify the reads.
  type: boolean
  inputBinding:
    prefix: --ILQ_USE
- id: in_il_q_skip
  doc: Write reads to NC folder
  type: boolean
  inputBinding:
    prefix: --ILQ_SKIP
- id: in_il_q_qc
  doc: ditto
  type: boolean
  inputBinding:
    prefix: --ILQ_QC
- id: in_q_seq_out
  doc: Write qseq format output files if input is qseq. Without this the output may
    be in fastq format.
  type: boolean
  inputBinding:
    prefix: --QSEQ_OUT
- id: in_sets_code_read
  doc: Sets bar code read length if different from tag length.
  type: long
  inputBinding:
    prefix: -l
- id: in_specifies_minimum_difference
  doc: "Specifies a minimum tag alignment score difference between best tag and next\
    \ best tag.\nIf difference is less than this reads are written to the catch all\
    \ file.\nDefault is 30 * Distance/2"
  type: long
  inputBinding:
    prefix: -t
- id: in_enables_adapter_stripping
  doc: "[3' adapter sequence]\nEnables adapter stripping from 3' end of reads before\
    \ checking for a 3' index tag.\nDefault adapter sequence is TCGTATGCCGTCTTCTGCTTG."
  type: boolean
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- novobarcode
