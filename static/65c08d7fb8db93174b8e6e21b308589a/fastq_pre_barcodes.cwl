class: CommandLineTool
id: fastq_pre_barcodes.cwl
inputs:
- id: in_verbose
  doc: :increase level of messages printed to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_brief
  doc: :decrease level of messages printed to stderr
  type: boolean
  inputBinding:
    prefix: --brief
- id: in_read_one
  doc: :fastq (optional gzipped) file name
  type: File
  inputBinding:
    prefix: --read1
- id: in_read_two
  doc: :fastq (optional gzipped) file name
  type: File
  inputBinding:
    prefix: --read2
- id: in_index_one
  doc: :fastq (optional gzipped) file name
  type: File
  inputBinding:
    prefix: --index1
- id: in_index_two
  doc: :fastq (optional gzipped) file name
  type: File
  inputBinding:
    prefix: --index2
- id: in_index_three
  doc: :fastq (optional gzipped) file name
  type: File
  inputBinding:
    prefix: --index3
- id: in_phred_encoding
  doc: (33|64) :phred encoding used in the input files
  type: boolean
  inputBinding:
    prefix: --phred_encoding
- id: in_min_qual
  doc: '[0-40]        :defines the minimum quality that all bases in the UMI, CELL
    or Sample should have (reads that do not pass the criteria are discarded). 0 disables
    the filter.'
  type: boolean
  inputBinding:
    prefix: --min_qual
- id: in_outfile_one
  doc: :file name for ouputing the reads from file1
  type: File
  inputBinding:
    prefix: --outfile1
- id: in_outfile_two
  doc: :file name for ouputing the reads from file2
  type: File
  inputBinding:
    prefix: --outfile2
- id: in_outfile_three
  doc: :file name for ouputing the reads from file3
  type: File
  inputBinding:
    prefix: --outfile3
- id: in_interleaved
  doc: (read1|read2|index1|index2|index3),(read1|read2|index1|index2|index3)    :interleaved
    data
  type: boolean
  inputBinding:
    prefix: --interleaved
- id: in_umi_read
  doc: (read1|read2|index1|index2|index3)       :in which input file can the UMI be
    found
  type: boolean
  inputBinding:
    prefix: --umi_read
- id: in_umi_offset
  doc: :offset
  type: long
  inputBinding:
    prefix: --umi_offset
- id: in_umi_size
  doc: :number of bases after the offset
  type: boolean
  inputBinding:
    prefix: --umi_size
- id: in_cell_read
  doc: (read1|read2|index1|index2|index3)      :in which input file can the cell be
    found
  type: boolean
  inputBinding:
    prefix: --cell_read
- id: in_cell_offset
  doc: :offset
  type: long
  inputBinding:
    prefix: --cell_offset
- id: in_cell_size
  doc: :number of bases after the offset
  type: long
  inputBinding:
    prefix: --cell_size
- id: in_sample_read
  doc: (read1|read2|index1|index2|index3)    :in which input file can the sample barcode
    be found
  type: boolean
  inputBinding:
    prefix: --sample_read
- id: in_sample_offset
  doc: :offset
  type: long
  inputBinding:
    prefix: --sample_offset
- id: in_sample_size
  doc: :number of bases after the offset
  type: long
  inputBinding:
    prefix: --sample_size
- id: in_one_zero_x
  doc: ': use 10X UMI tags (UB and UY) instead of the default tags defined in the
    SAM specification'
  type: boolean
  inputBinding:
    prefix: --10x
- id: in_optional
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_parameters
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastq_pre_barcodes
