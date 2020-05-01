#!/usr/bin/env cwl-runner

baseCommand:
- Corrector_HA
class: CommandLineTool
cwlVersion: v1.0
id: corrector_ha
inputs:
- doc: 'Set kmer size, default=17. Note: this value must be set to be same as that
    used in Kmer_freq program.'
  id: k
  inputBinding:
    prefix: -k
  type: long
- doc: 'Set the low frequency cutoff, default=3. Note: the Kmers with frequency lower
    than(<=) this cutoff will be taken as suspicious Kmers, while the others as credible
    Kmers.'
  id: l
  inputBinding:
    prefix: -l
  type: long
- doc: 'Set the minimum length of a continuous high-freq-kmer region, default=10.
    Note: use the Branch and bounding tree method, needs a continuous high frequency
    region as the starting point. Here we set the minimum Kmer  number in the continuous
    high-freq-kmer region.'
  id: m
  inputBinding:
    prefix: -m
  type: long
- doc: 'Set the maximum change allowed in one read, default=2. Note: set the allowed
    base number to be changed, when achieve this cutoff, the program will turn to
    trim data instead of correction.'
  id: c
  inputBinding:
    prefix: -c
  type: long
- doc: 'Set the maximum node number allowed in the branch and bound tree, default=15000000.
    Note: this setting affects the maximum memory that will be used.'
  id: n
  inputBinding:
    prefix: -n
  type: long
- doc: "Set whether remain all the data(1) or not(0), default=0. Note: 1:remain all\
    \ the data, 0:trim some low quality and suspicious data to get more accurate data;\
    \ if set '1', no need to set -x and -r"
  id: a
  inputBinding:
    prefix: -a
  type: long
- doc: 'Set the ASCII shift of the quality value(Quality_shift), default=64. Note:
    usually 64 or 33 for Illumina data.'
  id: q
  inputBinding:
    prefix: -Q
  type: long
- doc: 'Set whether trim(1) suspicious region at the end of reads according to Q_value<=2
    or not(0), default=0. Note: 0:no, trim low quality and suspicious data directly;
    1:yes, just trim  Q_value<=2 continues region.'
  id: e
  inputBinding:
    prefix: -e
  type: long
- doc: 'Set whether trim(1) error bases with Q_value<=2 instead of correct(0) it ,
    default=0. Note: when base in Q_value<=2 continues region is detected error base,  0:correct
    this base; 1:trim this end of reads.'
  id: w
  inputBinding:
    prefix: -w
  type: long
- doc: 'Set Quality threshold of error bases, default=40. Note: bases with quality
    value higher than this threshold will not be  corrected when using BBT method.'
  id: q
  inputBinding:
    prefix: -q
  type: long
- doc: 'Set the trimmed length at low-quality ends instead of correct them, default=KmerSize/2.
    Note: on the trimmed ends or real ends of reads, sequencing errors tend to be  concentrate,
    and is hard to correct all of them. In order to get higher accuracy in the final
    result, we further trimmed some length at these low-quality regions.'
  id: x
  inputBinding:
    prefix: -x
  type: long
- doc: 'Set the minimum length of trimmed read, default=50. Note:  This value set
    the minimum length of final reads that will be output.'
  id: r
  inputBinding:
    prefix: -r
  type: long
- doc: 'Set the thread number, default=1. Note: the more thread number, the high speed,
    however, this should be less than  the number of CPU cores.'
  id: t
  inputBinding:
    prefix: -t
  type: long
- doc: 'Set whether convert read1 and read2 corrected file into Pair-end file: 1,
    yes, 0, no; default=1. Note: program may discard some low quality reads in corrected
    file, it should be convert into Pair-end file for using in some other porgram(for
    example: SOAPdenovo), pair and single file as the result file when it set to "-j
    1". If you have only  single-end reads, please do not use the function, that is,
    set option "-j 0". The default value is to deal with paired-end reads.'
  id: j
  inputBinding:
    prefix: -j
  type: long
- doc: 'Set output file format, default=1. Note: 0, fasta compressed file(*.fa.gz);
    1, fastq compressed file(*.fq.gz); 2, fasta text file(*.fa); 3, fastq text file(*.fq).
    If input read files are in fasta format and ouput in fastq format, program will
    output all quality char=40+Quality_shift.'
  id: o
  inputBinding:
    prefix: -o
  type: long
