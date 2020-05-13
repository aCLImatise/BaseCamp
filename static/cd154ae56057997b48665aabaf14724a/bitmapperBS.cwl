class: CommandLineTool
id: bitmapperBS.cwl
inputs:
- id: index
  doc: '[file]         Generate an index from the specified fasta file. '
  type: boolean
  inputBinding:
    prefix: --index
- id: index_folder
  doc: '[folder]Set the folder that stores the genome indexes. If this option is not
    set,  the indexes would be stores in the same folder of genome (input fasta file). '
  type: boolean
  inputBinding:
    prefix: --index_folder
- id: search
  doc: '[file/folder] Search in the specified genome. If the indexes of this genome
    are built without "--index_folder",  please provide the path to the fasta file
    of genome (index files should be in the same folder).  Otherwise please provide
    the path to the index folder (set by "--index_folder" during indexing).'
  type: boolean
  inputBinding:
    prefix: --search
- id: fast
  doc: Set bitmapperBS in fast mode (default). This option is only available in paired-end
    mode.
  type: boolean
  inputBinding:
    prefix: --fast
- id: sensitive
  doc: Set bitmapperBS in sensitive mode. This option is only available in paired-end
    mode.
  type: boolean
  inputBinding:
    prefix: --sensitive
- id: seq
  doc: '[file]           Input sequences in fastq/fastq.gz format [file]. This option
    is used   for single-end reads.'
  type: boolean
  inputBinding:
    prefix: --seq
- id: seq1
  doc: '[file]          Input sequences in fastq/fastq.gz format [file] (First file).  Use
    this option to indicate the first file of  paired-end reads. '
  type: boolean
  inputBinding:
    prefix: --seq1
- id: seq2
  doc: '[file]          Input sequences in fastq/fastq.gz format [file] (Second file).  Use
    this option to indicate the second file of  paired-end reads.  '
  type: boolean
  inputBinding:
    prefix: --seq2
- id: o
  doc: '[file]              Output of the mapped sequences in SAM or BAM format. The
    default is "stdout" (standard output) in SAM format.'
  type: boolean
  inputBinding:
    prefix: -o
- id: sam
  doc: Output mapping results in SAM format (default).
  type: boolean
  inputBinding:
    prefix: --sam
- id: bam
  doc: Output mapping results in BAM format.
  type: boolean
  inputBinding:
    prefix: --bam
- id: me_thy_out
  doc: Output the intermediate methylation result files, instead of SAM or BAM files.
  type: boolean
  inputBinding:
    prefix: --methy_out
- id: e
  doc: '[float]             Set the edit distance rate of read length. This value
    is between 0 and 1 (default: 0.08 = 8% of read length).'
  type: boolean
  inputBinding:
    prefix: -e
- id: min
  doc: '[int]            Min observed template length between a pair of end sequences
    (default: 0).'
  type: boolean
  inputBinding:
    prefix: --min
- id: max
  doc: '[int]            Max observed template length between a pair of end sequences
    (default: 500).'
  type: boolean
  inputBinding:
    prefix: --max
- id: threads
  doc: '[int]    Set the number of CPU threads (default: 1).'
  type: boolean
  inputBinding:
    prefix: --threads
- id: pb_at
  doc: Mapping the BS-seq from pbat protocol.
  type: boolean
  inputBinding:
    prefix: --pbat
- id: unmapped_out
  doc: Report unmapped reads.
  type: boolean
  inputBinding:
    prefix: --unmapped_out
- id: ambiguous_out
  doc: Random report one of hit of each ambiguous mapped read.
  type: boolean
  inputBinding:
    prefix: --ambiguous_out
- id: mapstats
  doc: '[file]      Output the statistical information of read alignment into file.'
  type: boolean
  inputBinding:
    prefix: --mapstats
- id: phred33
  doc: Input read qualities are encoded by Phred33 (default).
  type: boolean
  inputBinding:
    prefix: --phred33
- id: phred64
  doc: Input read qualities are encoded by Phred64.
  type: boolean
  inputBinding:
    prefix: --phred64
- id: mp_max
  doc: '[INT]         Maximum mismatch penalty (default: 6).'
  type: boolean
  inputBinding:
    prefix: --mp_max
- id: mp_min
  doc: '[INT]         Minimum mismatch penalty (default: 2).'
  type: boolean
  inputBinding:
    prefix: --mp_min
- id: np
  doc: '[INT]             Ambiguous character (e.g., N) penalty (default: 1).'
  type: boolean
  inputBinding:
    prefix: --np
- id: gap_open
  doc: '[INT]       Gap open penalty (default: 5).'
  type: boolean
  inputBinding:
    prefix: --gap_open
- id: gap_extension
  doc: '[INT]  Gap extension penalty (default: 3).'
  type: boolean
  inputBinding:
    prefix: --gap_extension
outputs: []
cwlVersion: v1.1
baseCommand:
- bitmapperBS
