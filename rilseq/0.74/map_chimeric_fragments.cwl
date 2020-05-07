class: CommandLineTool
id: map_chimeric_fragments.py.cwl
inputs:
- id: genome_fast_a
  doc: Name of genome fasta file. The file must be indexed usingbwa index command
    prior to this run.
  type: string
  inputBinding:
    position: 0
- id: bam_files
  doc: One or more bam files.
  type: string
  inputBinding:
    position: 1
- id: reverse_complement
  doc: "Treat the reads as reverse complement. This means that the first read is actually\
    \ the 3' end of the fragment. Use this when using Jonathan Livny's protocol for\
    \ library construction (default: False)"
  type: boolean
  inputBinding:
    prefix: --reverse_complement
- id: transcripts
  doc: 'A gff file of transcripts. If given, screen reads that might reside from the
    same transcript. Very useful for screening ribosomal RNAs. Otherwise use only
    the size limit. (default: None)'
  type: string
  inputBinding:
    prefix: --transcripts
- id: distance
  doc: 'Maximal distance between concordant reads. If they are generated from the
    same strand but larger than this distance they will be considered as chimeric.
    (default: 1000)'
  type: string
  inputBinding:
    prefix: --distance
- id: dust_thr
  doc: 'Threshold for dust filter. If 0 skip. (default: 10)'
  type: string
  inputBinding:
    prefix: --dust_thr
- id: dir_out
  doc: 'Output directory, default is this directory. (default: ./remapped-data/)'
  type: string
  inputBinding:
    prefix: --dirout
- id: all_reads
  doc: 'Map all reads in the BAM file, write all the fragments that are not chimeric
    to the file specified here e.g. -a single_fragments_mapping.txt. By default these
    reads will be written to the standard output. (default: None)'
  type: string
  inputBinding:
    prefix: --all_reads
- id: add_all_reads
  doc: "By default map all reads in the BAM file, write all the fragments, either\
    \ chimeric ro single to the output file (stdout). If this option is selected don't\
    \ wirte the single reads. (default: True)"
  type: boolean
  inputBinding:
    prefix: --add_all_reads
- id: keep_circular
  doc: 'Remove reads that are probably a result of circular RNAs by default. If the
    reads are close but in opposite order they will be removed unless this argument
    is set. (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_circular
- id: length
  doc: 'Length of sequence to map. Take the ends of the fragment and map each to the
    genome. The length of the region will be this length. (default: 25)'
  type: long
  inputBinding:
    prefix: --length
- id: max_mismatches
  doc: 'Find alignment allowing this number of mismatches. If there are more than
    one match with this number of mismatches the read will be treated as if it might
    match all of them and if there is one scenario in which the two ends are concordant
    it will be removed. (default: 3)'
  type: long
  inputBinding:
    prefix: --max_mismatches
- id: allowed_mismatches
  doc: 'This number of mismatches is allowed between the a match and the genome. If
    there are mapped reads with less than --max_mismatches mismatches but more than
    this number the read will be ignored. (default: 1)'
  type: string
  inputBinding:
    prefix: --allowed_mismatches
- id: skip_mapping
  doc: 'Skip the mapping step, use previously mapped files. (default: False)'
  type: boolean
  inputBinding:
    prefix: --skip_mapping
- id: maxg
  doc: 'If a read has more than this fraction of Gs remove this readfrom the screen.
    This is due to nextseq technology which puts G where there is no signal, the poly
    G might just be noise. When using other sequencing technologies set to 1. (default:
    0.8)'
  type: long
  inputBinding:
    prefix: --maxG
- id: feature
  doc: 'Name of features to count on the GTF file (column 2). (default: exon)'
  type: string
  inputBinding:
    prefix: --feature
- id: identifier
  doc: 'Name of identifier to print (in column 8 of the GTF file). (default: gene_id)'
  type: string
  inputBinding:
    prefix: --identifier
- id: bwa_exec
  doc: 'bwa command (default: bwa)'
  type: string
  inputBinding:
    prefix: --bwa_exec
- id: sam_tools_cmd
  doc: 'Samtools executable. (default: samtools)'
  type: string
  inputBinding:
    prefix: --samtools_cmd
- id: params_aln
  doc: 'Additional parameters for aln function of bwa. (default: -t 8 -N -M 0)'
  type: string
  inputBinding:
    prefix: --params_aln
- id: sam_se_params
  doc: 'Additional parameters for samse function of bwa. (default: -n 1000)'
  type: string
  inputBinding:
    prefix: --samse_params
outputs: []
cwlVersion: v1.1
baseCommand:
- map_chimeric_fragments.py
