class: CommandLineTool
id: hint_pre.cwl
inputs:
- id: data
  doc: Hi-C raw data with fastq format, two mates seperate with a comma ',', or bam
    file after alignment.
  type: string
  inputBinding:
    prefix: --data
- id: ref_dir
  doc: the reference directory that downloaded from dropbox dropbox. (https://www.dropbox.com/sh/2ufsyu4wvrboxxp/A
    ABk5-_Fwy7jdM_t0vIsgYf4a?dl=0.)
  type: string
  inputBinding:
    prefix: --refdir
- id: sam_tools_path
  doc: Path to samtools, e.g./n/app/samtools/1.3.1/bin/samtools
  type: string
  inputBinding:
    prefix: --samtoolspath
- id: aligner_bwa
  doc: Path to your BWA aligner, required when your input file(s) is in fastq format,
    ignore when you input a bam file.
  type: string
  inputBinding:
    prefix: --alignerbwa
- id: bwa_index
  doc: Path to BWA Index if your input file is fastq format, ignore if your input
    is bam file.
  type: string
  inputBinding:
    prefix: --bwaIndex
- id: genome
  doc: 'Specify your species, choose from hg38, hg19, and mm10. DEFAULT: hg19'
  type: string
  inputBinding:
    prefix: --genome
- id: in_format
  doc: "Format for the Hi-C input data, choose from 'fastq' and 'bam', DEFAULT: fastq"
  type: string
  inputBinding:
    prefix: --informat
- id: out_format
  doc: "Format for the output contact matrix, choose from 'cooler' and 'juicer', DEFAULT:\
    \ cooler"
  type: string
  inputBinding:
    prefix: --outformat
- id: resolution
  doc: Generate Hi-C contact matrix in user specified resolution. If not set, HiNT
    will only output Hi-C contact matrix in 50kb, 100kb, and 1Mb
  type: string
  inputBinding:
    prefix: --resolution
- id: cooler_path
  doc: Path to cooler tool, required when the format is cool via cooler
  type: string
  inputBinding:
    prefix: --coolerpath
- id: juicer_path
  doc: Path to juicer tools, required when the format is hic via juicer tools
  type: string
  inputBinding:
    prefix: --juicerpath
- id: pair_tools_path
  doc: Path to pairtools
  type: string
  inputBinding:
    prefix: --pairtoolspath
- id: name
  doc: Prefix for the result files. If not set, 'NA' will be used instead
  type: string
  inputBinding:
    prefix: --name
- id: outdir
  doc: Path to the output directory, where you want to store all the output files,
    if not set, the current directory will be used
  type: string
  inputBinding:
    prefix: --outdir
- id: threads
  doc: 'Number of threads for running BWA, DEFAULT: 16'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- hint
- pre
