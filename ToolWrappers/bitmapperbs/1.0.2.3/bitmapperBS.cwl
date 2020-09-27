class: CommandLineTool
id: bitmapperBS.cwl
inputs:
- id: in_index
  doc: '[file]         Generate an index from the specified fasta file.'
  type: boolean
  inputBinding:
    prefix: --index
- id: in_index_folder
  doc: "[folder]Set the folder that stores the genome indexes. If this option is not\
    \ set,\nthe indexes would be stores in the same folder of genome (input fasta\
    \ file)."
  type: boolean
  inputBinding:
    prefix: --index_folder
- id: in_search
  doc: "[file/folder] Search in the specified genome. If the indexes of this genome\
    \ are built without \"--index_folder\",\nplease provide the path to the fasta\
    \ file of genome (index files should be in the same folder).\nOtherwise please\
    \ provide the path to the index folder (set by \"--index_folder\" during indexing)."
  type: boolean
  inputBinding:
    prefix: --search
- id: in_fast
  doc: Set bitmapperBS in fast mode (default). This option is only available in paired-end
    mode.
  type: boolean
  inputBinding:
    prefix: --fast
- id: in_sensitive
  doc: Set bitmapperBS in sensitive mode. This option is only available in paired-end
    mode.
  type: boolean
  inputBinding:
    prefix: --sensitive
- id: in_seq
  doc: "[file]           Input sequences in fastq/fastq.gz format [file]. This option\
    \ is used\nfor single-end reads."
  type: boolean
  inputBinding:
    prefix: --seq
- id: in_seq_one
  doc: "[file]          Input sequences in fastq/fastq.gz format [file] (First file).\n\
    Use this option to indicate the first file of\npaired-end reads."
  type: boolean
  inputBinding:
    prefix: --seq1
- id: in_seq_two
  doc: "[file]          Input sequences in fastq/fastq.gz format [file] (Second file).\n\
    Use this option to indicate the second file of\npaired-end reads."
  type: boolean
  inputBinding:
    prefix: --seq2
- id: in_output_mapped_sequences
  doc: '[file]              Output of the mapped sequences in SAM or BAM format. The
    default is "stdout" (standard output) in SAM format.'
  type: File
  inputBinding:
    prefix: -o
- id: in_sam
  doc: Output mapping results in SAM format (default).
  type: boolean
  inputBinding:
    prefix: --sam
- id: in_bam
  doc: Output mapping results in BAM format.
  type: boolean
  inputBinding:
    prefix: --bam
- id: in_me_thy_out
  doc: Output the intermediate methylation result files, instead of SAM or BAM files.
  type: boolean
  inputBinding:
    prefix: --methy_out
- id: in_set_distance_rate
  doc: '[float]             Set the edit distance rate of read length. This value
    is between 0 and 1 (default: 0.08 = 8% of read length).'
  type: boolean
  inputBinding:
    prefix: -e
- id: in_min
  doc: '[int]            Min observed template length between a pair of end sequences
    (default: 0).'
  type: boolean
  inputBinding:
    prefix: --min
- id: in_max
  doc: '[int]            Max observed template length between a pair of end sequences
    (default: 500).'
  type: boolean
  inputBinding:
    prefix: --max
- id: in_threads
  doc: '[int]    Set the number of CPU threads (default: 1).'
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_pb_at
  doc: Mapping the BS-seq from pbat protocol.
  type: boolean
  inputBinding:
    prefix: --pbat
- id: in_unmapped_out
  doc: Report unmapped reads.
  type: boolean
  inputBinding:
    prefix: --unmapped_out
- id: in_ambiguous_out
  doc: Random report one of hit of each ambiguous mapped read.
  type: boolean
  inputBinding:
    prefix: --ambiguous_out
- id: in_mapstats
  doc: '[file]      Output the statistical information of read alignment into file.'
  type: File
  inputBinding:
    prefix: --mapstats
- id: in_phred_three_three
  doc: Input read qualities are encoded by Phred33 (default).
  type: boolean
  inputBinding:
    prefix: --phred33
- id: in_phred_six_four
  doc: Input read qualities are encoded by Phred64.
  type: boolean
  inputBinding:
    prefix: --phred64
- id: in_mp_max
  doc: '[INT]         Maximum mismatch penalty (default: 6).'
  type: boolean
  inputBinding:
    prefix: --mp_max
- id: in_mp_min
  doc: '[INT]         Minimum mismatch penalty (default: 2).'
  type: boolean
  inputBinding:
    prefix: --mp_min
- id: in_np
  doc: '[INT]             Ambiguous character (e.g., N) penalty (default: 1).'
  type: boolean
  inputBinding:
    prefix: --np
- id: in_gap_open
  doc: '[INT]       Gap open penalty (default: 5).'
  type: boolean
  inputBinding:
    prefix: --gap_open
- id: in_gap_extension
  doc: '[INT]  Gap extension penalty (default: 3).'
  type: boolean
  inputBinding:
    prefix: --gap_extension
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_mapped_sequences
  doc: '[file]              Output of the mapped sequences in SAM or BAM format. The
    default is "stdout" (standard output) in SAM format.'
  type: File
  outputBinding:
    glob: $(inputs.in_output_mapped_sequences)
- id: out_mapstats
  doc: '[file]      Output the statistical information of read alignment into file.'
  type: File
  outputBinding:
    glob: $(inputs.in_mapstats)
cwlVersion: v1.1
baseCommand:
- bitmapperBS
