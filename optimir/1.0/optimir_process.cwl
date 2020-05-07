class: CommandLineTool
id: optimir_process.cwl
inputs:
- id: fq
  doc: 'Full path of the sample fastq file (accepted formats and extensions: fastq,
    fq and fq.gz)'
  type: string
  inputBinding:
    prefix: --fq
- id: dir_output
  doc: 'Full path of the directory where output files are generated [default: ./OptimiR_Results_Dir/]'
  type: string
  inputBinding:
    prefix: --dirOutput
- id: vcf
  doc: Full path of the vcf file with genotypes
  type: string
  inputBinding:
    prefix: --vcf
- id: seed_len
  doc: "Choose the alignment seed length used in option '-L' by Bowtie2 [default:\
    \ 17]"
  type: string
  inputBinding:
    prefix: --seedLen
- id: w5
  doc: "Choose the weight applied on events detected on the 5' end of aligned reads\
    \ [default: 4]"
  type: string
  inputBinding:
    prefix: --w5
- id: score_thresh
  doc: 'Choose the threshold for alignment score above which alignments are discarded
    [default: 9]'
  type: string
  inputBinding:
    prefix: --scoreThresh
- id: consistent_rate
  doc: 'Choose the rate threshold for inconsistent reads mapped to a polymiR above
    which the alignment is flagged as highly suspicious [default: 0.01]'
  type: string
  inputBinding:
    prefix: --consistentRate
- id: rm_temp_files
  doc: Add this option to remove temporary files (trimmed fastq, collapsed fastq,
    mapped reads, annotated bams
  type: boolean
  inputBinding:
    prefix: --rmTempFiles
- id: an_not
  doc: "Control which annotation file is produced by adding corresponding letter :\
    \ 'h' for expressed_hairpins, 'p' for polymiRs_table, 'i' for consistency_table,\
    \ 'c' for remaining_ambiguous, 's' for isomiRs_dist. Ex: '-- annot hpics' [default]\
    \ will produce all of them"
  type: string
  inputBinding:
    prefix: --annot
- id: gff_out
  doc: 'Add this option to generate results in mirGFF3 format [default : disabled]'
  type: boolean
  inputBinding:
    prefix: --gff_out
- id: vcf_out
  doc: 'Add this option to generate results in VCF format [default : disabled]'
  type: boolean
  inputBinding:
    prefix: --vcf_out
- id: adapt3
  doc: "Define the 3' adaptor sequence (default is NEB & ILLUMINA: AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC\
    \ -a TGGAATTCTCGGGTGCCAAGG -> hack: use -a to add adapter sequences)"
  type: string
  inputBinding:
    prefix: --adapt3
- id: adapt5
  doc: "Define the 5' adaptor sequence [default: None]"
  type: string
  inputBinding:
    prefix: --adapt5
- id: re_admin
  doc: 'Define the minimum read length defined with option -m in cutadapt [default:
    15]'
  type: string
  inputBinding:
    prefix: --readMin
- id: read_max
  doc: 'Define the maximum read length defined with option -M in cutadapt [default:
    27]'
  type: string
  inputBinding:
    prefix: --readMax
- id: bq_thresh
  doc: 'Define the Base Quality threshold defined with option -q in cutadapt [default:
    28]'
  type: string
  inputBinding:
    prefix: --bqThresh
- id: trim_again
  doc: 'Add this option to trim files that have been trimmed in a previous application.
    By default, when temporary files are kept, trimmed files are reused. If you wish
    to change a paramater used in the trimming step of the workflow, this parameter
    is a must [default: disabled]'
  type: boolean
  inputBinding:
    prefix: --trimAgain
- id: matures_fast_a
  doc: 'Path to the reference library containing mature miRNAs sequences [default:
    miRBase 21]'
  type: string
  inputBinding:
    prefix: --maturesFasta
- id: hairpins_fast_a
  doc: 'Path to the reference library containing pri-miRNAs sequences [default: miRBase
    21]'
  type: string
  inputBinding:
    prefix: --hairpinsFasta
- id: gff3
  doc: 'Path to the reference library containing miRNAs and pri-miRNAs coordinates
    [default: miRBase v21, GRCh38 coordinates]'
  type: string
  inputBinding:
    prefix: --gff3
- id: quiet
  doc: 'Add this option to remove OptimiR progression on screen [default: disabled]'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: cut_adapt
  doc: 'Provide path to the cutadapt binary [default: from $PATH]'
  type: string
  inputBinding:
    prefix: --cutadapt
- id: bowtie2
  doc: 'Provide path to the bowtie2 binary [default: from $PATH]'
  type: string
  inputBinding:
    prefix: --bowtie2
- id: bowtie2_build
  doc: 'Provide path to the bowtie2 index builder binary [default: from $PATH]'
  type: string
  inputBinding:
    prefix: --bowtie2_build
- id: sam_tools
  doc: 'Provide path to the samtools binary [default: from $PATH]'
  type: string
  inputBinding:
    prefix: --samtools
outputs: []
cwlVersion: v1.1
baseCommand:
- optimir
- process
