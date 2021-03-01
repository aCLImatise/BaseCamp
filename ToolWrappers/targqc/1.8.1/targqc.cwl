class: CommandLineTool
id: targqc.cwl
inputs:
- id: in_test
  doc: Quick test of correct installation.
  type: string?
  inputBinding:
    prefix: --test
- id: in_amplicons
  doc: "BED file with regions to analyse. If not specified,\nCDS across full genome\
    \ will be analysed"
  type: File?
  inputBinding:
    prefix: --amplicons
- id: in_output_dir
  doc: "Output directory (or directory name in case of bcbio\nfinal dir)"
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_genome
  doc: "Genome build (hg19 or hg38), used to pick genome\nannotation BED file if not\
    \ specified, or path to .fa\nbwa prefix"
  type: File?
  inputBinding:
    prefix: --genome
- id: in_bwa_bwa_prefix
  doc: Path to BWA index prefix to align if input is FastQ
  type: File?
  inputBinding:
    prefix: --bwa--bwa-prefix
- id: in_fai
  doc: "Path to fai fasta index - sort BAM and BED files, and\nto get chromosome lengths\
    \ for proper padding BED\nfiles; optional"
  type: File?
  inputBinding:
    prefix: --fai
- id: in_padding
  doc: "integer indicating the number of bases to extend each\ntarget region up and\
    \ down-stream. Default is 200"
  type: long?
  inputBinding:
    prefix: --padding
- id: in_down_sample_pairs_num
  doc: "If input is FastQ, select N random read pairs from\neach input set (instead\
    \ of default fraction 0.05)."
  type: long?
  inputBinding:
    prefix: --downsample-pairs-num
- id: in_down_sample_fraction
  doc: "If input is FastQ, select K% random read pairs from\neach input set. Default\
    \ is 0.05%. To turn off (align\nall reads), set --downsample 1"
  type: double?
  inputBinding:
    prefix: --downsample-fraction
- id: in_threads
  doc: Number of threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_reuse
  doc: "reuse intermediate non-empty files in the work dir\nfrom previous run"
  type: boolean?
  inputBinding:
    prefix: --reuse
- id: in_scheduler
  doc: Scheduler to use for ipython parallel
  type: string?
  inputBinding:
    prefix: --scheduler
- id: in_queue
  doc: Scheduler queue to run jobs on, for ipython parallel
  type: string?
  inputBinding:
    prefix: --queue
- id: in_resources
  doc: "Cluster specific resources specifications. Can be\nspecified multiple times.\
    \ Supports SGE, Torque, LSF\nand SLURM parameters."
  type: string?
  inputBinding:
    prefix: --resources
- id: in_re_annotate
  doc: "Re-annotate BED file with gene names, even if it's 4\ncolumns or more\n"
  type: boolean?
  inputBinding:
    prefix: --reannotate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Output directory (or directory name in case of bcbio\nfinal dir)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- targqc
