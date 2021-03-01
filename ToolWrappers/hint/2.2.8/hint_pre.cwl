class: CommandLineTool
id: hint_pre.cwl
inputs:
- id: in_data
  doc: "Hi-C raw data with fastq format, two mates seperate\nwith a comma ',', or\
    \ bam file after alignment."
  type: File?
  inputBinding:
    prefix: --data
- id: in_ref_dir
  doc: "the reference directory that downloaded from dropbox\ndropbox. (https://www.dropbox.com/sh/2ufsyu4wvrboxxp/A\n\
    ABk5-_Fwy7jdM_t0vIsgYf4a?dl=0.)"
  type: Directory?
  inputBinding:
    prefix: --refdir
- id: in_sam_tools_path
  doc: "Path to samtools,\ne.g./n/app/samtools/1.3.1/bin/samtools"
  type: File?
  inputBinding:
    prefix: --samtoolspath
- id: in_aligner_bwa
  doc: "Path to your BWA aligner, required when your input\nfile(s) is in fastq format,\
    \ ignore when you input a\nbam file."
  type: File?
  inputBinding:
    prefix: --alignerbwa
- id: in_bwa_index
  doc: "Path to BWA Index if your input file is fastq format,\nignore if your input\
    \ is bam file."
  type: File?
  inputBinding:
    prefix: --bwaIndex
- id: in_genome
  doc: "Specify your species, choose from hg38, hg19, and\nmm10. DEFAULT: hg19"
  type: string?
  inputBinding:
    prefix: --genome
- id: in_in_format
  doc: "Format for the Hi-C input data, choose from 'fastq'\nand 'bam', DEFAULT: fastq"
  type: string?
  inputBinding:
    prefix: --informat
- id: in_out_format
  doc: "Format for the output contact matrix, choose from\n'cooler' and 'juicer',\
    \ DEFAULT: cooler"
  type: string?
  inputBinding:
    prefix: --outformat
- id: in_resolution
  doc: "Generate Hi-C contact matrix in user specified\nresolution. If not set, HiNT\
    \ will only output Hi-C\ncontact matrix in 50kb, 100kb, and 1Mb"
  type: long?
  inputBinding:
    prefix: --resolution
- id: in_cooler_path
  doc: "Path to cooler tool, required when the format is cool\nvia cooler"
  type: File?
  inputBinding:
    prefix: --coolerpath
- id: in_juicer_path
  doc: "Path to juicer tools, required when the format is hic\nvia juicer tools"
  type: File?
  inputBinding:
    prefix: --juicerpath
- id: in_pair_tools_path
  doc: Path to pairtools
  type: File?
  inputBinding:
    prefix: --pairtoolspath
- id: in_name
  doc: "Prefix for the result files. If not set, 'NA' will be\nused instead"
  type: string?
  inputBinding:
    prefix: --name
- id: in_outdir
  doc: "Path to the output directory, where you want to store\nall the output files,\
    \ if not set, the current\ndirectory will be used"
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_threads
  doc: "Number of threads for running BWA, DEFAULT: 16\n"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "Path to the output directory, where you want to store\nall the output files,\
    \ if not set, the current\ndirectory will be used"
  type: File?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- hint
- pre
