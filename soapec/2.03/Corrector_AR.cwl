class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/Corrector_AR.cwl
inputs:
- id: set_size_consecutive
  doc: 'Set size of consecutive kmer, default=17. Note: this value must be set to
    be same as that used in Kmer_freq program.'
  type: long
  inputBinding:
    prefix: -k
- id: set_cutoff_consecutive
  doc: 'Set the low frequency cutoff of consecutive kmer, default=3. Note: the consecutive
    Kmers with frequency lower than(<=) this cutoff will be taken as false Kmers,
    while the others as authentic Kmers.'
  type: long
  inputBinding:
    prefix: -l
- id: set_size_space_kmer
  doc: 'Set size of space kmer, default=0. Note: this value must be set to be same
    as that used in Kmer_freq program.  If it is default value K=0, program will not
    use space kmer in error correction.'
  type: long
  inputBinding:
    prefix: -K
- id: set_size_space_seed
  doc: 'Set the size of space seed, default=0. Note: this vaule must be set to be
    same as that used in Kmer_freq program.'
  type: long
  inputBinding:
    prefix: -s
- id: set_cutoff_space
  doc: 'Set the low frequency cutoff of space kmer, default=3. Note: the space Kmers
    with frequency lower than(<=) this cutoff will be taken as false Kmers, while
    the others as authentic Kmers.'
  type: long
  inputBinding:
    prefix: -L
- id: set_minimum_length_continuous
  doc: 'Set the minimum length of a continuous high-freq-kmer region, default=10.
    Note: use the Branch and bounding tree method, needs a continuous high frequency
    region as the starting point. Here we set the minimum Kmer  number in the continuous
    high-freq-kmer region.'
  type: long
  inputBinding:
    prefix: -m
- id: set_change_set
  doc: 'Set the maximum change allowed in one read, default=2. Note: set the allowed
    base number to be changed, when achieve this cutoff, the program will turn to
    trim data instead of correction.'
  type: long
  inputBinding:
    prefix: -c
- id: set_maximum_number
  doc: 'Set the maximum node number allowed in the branch and bound tree, default=15000000.
    Note: this setting affects the maximum memory that will be used.'
  type: long
  inputBinding:
    prefix: -n
- id: set_remain_data
  doc: "Set whether remain all the data(1) or not(0), default=0. Note: 1:remain all\
    \ the data, 0:trim some low quality and suspicious data to get more accurate data;\
    \ if set '1', no need to set -x and -r"
  type: long
  inputBinding:
    prefix: -a
- id: set_ascii_shift
  doc: 'Set the ASCII shift of the quality value(Quality_shift), default=64. Note:
    usually 64 or 33 for Illumina data.'
  type: long
  inputBinding:
    prefix: -Q
- id: set_trim_suspicious
  doc: 'Set whether trim(1) suspicious region at the end of reads according to Q_value<=2
    or not(0), default=0. Note: 0:no, trim low quality and suspicious data directly;
    1:yes, just trim  Q_value<=2 continues region.'
  type: long
  inputBinding:
    prefix: -e
- id: set_trim_bases
  doc: 'Set whether trim(1) error bases with Q_value<=2 instead of correct(0) it ,
    default=0. Note: when base in Q_value<=2 continues region is detected error base,  0:correct
    this base; 1:trim this end of reads.'
  type: long
  inputBinding:
    prefix: -w
- id: set_quality_threshold
  doc: 'Set Quality threshold of error bases, default=40. Note: bases with quality
    value higher than this threshold will not be  corrected when using BBT method.'
  type: long
  inputBinding:
    prefix: -q
- id: set_length_ends
  doc: 'Set the trimmed length at low-quality ends instead of correct them, default=KmerSize/2.
    Note: on the trimmed ends or real ends of reads, sequencing errors tend to be  concentrate,
    and is hard to correct all of them. In order to get higher accuracy in the final
    result, we further trimmed some length at these low-quality regions.'
  type: long
  inputBinding:
    prefix: -x
- id: set_minimum_length_read
  doc: 'Set the minimum length of trimmed read, default=50. Note:  This value set
    the minimum length of final reads that will be output.'
  type: long
  inputBinding:
    prefix: -r
- id: set_number_default
  doc: 'Set the thread number, default=1. Note: the more thread number, the high speed,
    however, this should be less than  the number of CPU cores.'
  type: long
  inputBinding:
    prefix: -t
- id: set_convert_read
  doc: 'Set whether convert read1 and read2 corrected file into Pair-end file: 1,
    yes, 0, no; default=1. Note: program may discard some low quality reads in corrected
    file, it should be convert into Pair-end file for using in some other porgram(for
    example: SOAPdenovo), pair and single file as the result file when it set to "-j
    1". If you have only  single-end reads, please do not use the function, that is,
    set option "-j 0". The default value is to deal with paired-end reads.'
  type: long
  inputBinding:
    prefix: -j
- id: set_default_note
  doc: 'Set output file format, default=1. Note: 0, fasta compressed file(*.fa.gz);
    1, fastq compressed file(*.fq.gz); 2, fasta text file(*.fa); 3, fastq text file(*.fq).
    If input read files are in fasta format and ouput in fastq format, program will
    output all quality char=40+Quality_shift.'
  type: long
  inputBinding:
    prefix: -o
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: prefix_dot_freq_dot_cz
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: prefix_dotfreqdotczdotlen
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: prefix_dot_space_dot_freq_dot_cz
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: prefix_dot_space_dotfreqdotczdotlen
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: reads_file_list
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- Corrector_AR
