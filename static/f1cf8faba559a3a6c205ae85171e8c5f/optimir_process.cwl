class: CommandLineTool
id: optimir_process.cwl
inputs:
- id: in_fq
  doc: "Full path of the sample fastq file (accepted formats\nand extensions: fastq,\
    \ fq and fq.gz)"
  type: File?
  inputBinding:
    prefix: --fq
- id: in_dir_output
  doc: "Full path of the directory where output files are\ngenerated [default: ./OptimiR_Results_Dir/]"
  type: File?
  inputBinding:
    prefix: --dirOutput
- id: in_vcf
  doc: Full path of the vcf file with genotypes
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_seed_len
  doc: "Choose the alignment seed length used in option '-L'\nby Bowtie2 [default:\
    \ 17]"
  type: long?
  inputBinding:
    prefix: --seedLen
- id: in_w_five
  doc: "Choose the weight applied on events detected on the 5'\nend of aligned reads\
    \ [default: 4]"
  type: long?
  inputBinding:
    prefix: --w5
- id: in_score_thresh
  doc: "Choose the threshold for alignment score above which\nalignments are discarded\
    \ [default: 9]"
  type: long?
  inputBinding:
    prefix: --scoreThresh
- id: in_consistent_rate
  doc: "Choose the rate threshold for inconsistent reads\nmapped to a polymiR above\
    \ which the alignment is\nflagged as highly suspicious [default: 0.01]"
  type: double?
  inputBinding:
    prefix: --consistentRate
- id: in_rm_temp_files
  doc: "Add this option to remove temporary files (trimmed\nfastq, collapsed fastq,\
    \ mapped reads, annotated bams"
  type: boolean?
  inputBinding:
    prefix: --rmTempFiles
- id: in_an_not
  doc: "Control which annotation file is produced by adding\ncorresponding letter\
    \ : 'h' for expressed_hairpins, 'p'\nfor polymiRs_table, 'i' for consistency_table,\
    \ 'c' for\nremaining_ambiguous, 's' for isomiRs_dist. Ex: '--\nannot hpics' [default]\
    \ will produce all of them"
  type: File?
  inputBinding:
    prefix: --annot
- id: in_gff_out
  doc: "Add this option to generate results in mirGFF3 format\n[default : disabled]"
  type: boolean?
  inputBinding:
    prefix: --gff_out
- id: in_vcf_out
  doc: "Add this option to generate results in VCF format\n[default : disabled]"
  type: boolean?
  inputBinding:
    prefix: --vcf_out
- id: in_adapt_three
  doc: "Define the 3' adaptor sequence (default is NEB &\nILLUMINA: AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC\
    \ -a\nTGGAATTCTCGGGTGCCAAGG -> hack: use -a to add adapter\nsequences)"
  type: long?
  inputBinding:
    prefix: --adapt3
- id: in_adapt_five
  doc: "Define the 5' adaptor sequence [default: None]"
  type: long?
  inputBinding:
    prefix: --adapt5
- id: in_re_admin
  doc: "Define the minimum read length defined with option -m\nin cutadapt [default:\
    \ 15]"
  type: long?
  inputBinding:
    prefix: --readMin
- id: in_read_max
  doc: "Define the maximum read length defined with option -M\nin cutadapt [default:\
    \ 27]"
  type: long?
  inputBinding:
    prefix: --readMax
- id: in_bq_thresh
  doc: Define the Base Quality threshold defined with option
  type: string?
  inputBinding:
    prefix: --bqThresh
- id: in_cutadapt
  doc: 'cutadapt [default: 28]'
  type: long?
  inputBinding:
    prefix: -q
- id: in_trim_again
  doc: "Add this option to trim files that have been trimmed\nin a previous application.\
    \ By default, when temporary\nfiles are kept, trimmed files are reused. If you\
    \ wish\nto change a paramater used in the trimming step of the\nworkflow, this\
    \ parameter is a must [default: disabled]"
  type: boolean?
  inputBinding:
    prefix: --trimAgain
- id: in_matures_fast_a
  doc: "Path to the reference library containing mature miRNAs\nsequences [default:\
    \ miRBase 21]"
  type: File?
  inputBinding:
    prefix: --maturesFasta
- id: in_hairpins_fast_a
  doc: "Path to the reference library containing pri-miRNAs\nsequences [default: miRBase\
    \ 21]"
  type: File?
  inputBinding:
    prefix: --hairpinsFasta
- id: in_gff_three
  doc: "Path to the reference library containing miRNAs and\npri-miRNAs coordinates\
    \ [default: miRBase v21, GRCh38\ncoordinates]"
  type: long?
  inputBinding:
    prefix: --gff3
- id: in_quiet
  doc: "Add this option to remove OptimiR progression on\nscreen [default: disabled]"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_cut_adapt
  doc: "Provide path to the cutadapt binary [default: from\n$PATH]"
  type: File?
  inputBinding:
    prefix: --cutadapt
- id: in_bowtie_two
  doc: "Provide path to the bowtie2 binary [default: from\n$PATH]"
  type: long?
  inputBinding:
    prefix: --bowtie2
- id: in_bowtie_two_build
  doc: "Provide path to the bowtie2 index builder binary\n[default: from $PATH]"
  type: long?
  inputBinding:
    prefix: --bowtie2_build
- id: in_sam_tools
  doc: "Provide path to the samtools binary [default: from\n$PATH]\n"
  type: File?
  inputBinding:
    prefix: --samtools
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dir_output
  doc: "Full path of the directory where output files are\ngenerated [default: ./OptimiR_Results_Dir/]"
  type: File?
  outputBinding:
    glob: $(inputs.in_dir_output)
hints: []
cwlVersion: v1.1
baseCommand:
- optimir
- process
