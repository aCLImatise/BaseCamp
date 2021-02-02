class: CommandLineTool
id: damidseq_pipeline.cwl
inputs:
- id: in_bam_files
  doc: Only process BAM files
  type: boolean
  inputBinding:
    prefix: --bamfiles
- id: in_bed_tools_path
  doc: path to BEDTools executable (leave blank if in path)
  type: boolean
  inputBinding:
    prefix: --bedtools_path
- id: in_bins
  doc: "Width of bins to use for mapping reads\n[Current value: 75]"
  type: boolean
  inputBinding:
    prefix: --bins
- id: in_bowtie
  doc: "Perform bowtie2 alignment [1/0]\n[Current value: 1]"
  type: boolean
  inputBinding:
    prefix: --bowtie
- id: in_bowtie_two_genome_dir
  doc: Directory and basename for bowtie2 .bt2 indices
  type: boolean
  inputBinding:
    prefix: --bowtie2_genome_dir
- id: in_bowtie_two_path
  doc: path to bowtie2 executable (leave blank if in path)
  type: boolean
  inputBinding:
    prefix: --bowtie2_path
- id: in_dam
  doc: Specify file to use as Dam control
  type: boolean
  inputBinding:
    prefix: --dam
- id: in_extend_reads
  doc: "Perform read extension [1/0]\n[Current value: 1]"
  type: boolean
  inputBinding:
    prefix: --extend_reads
- id: in_extension_method
  doc: "Read extension method to use; options are:\nfull: Method used by version 1.3\
    \ and earlier.  Extends\nall reads to the value set with --len.\ngatc: Default\
    \ for version 1.4 and above. Extends reads\nto --len or to the next GATC site,\
    \ whichever is\nshorter.  Using this option increases peak resolution.\n[Current\
    \ value: gatc]"
  type: boolean
  inputBinding:
    prefix: --extension_method
- id: in_full_data_files
  doc: Output full binned ratio files (not only GATC array)
  type: boolean
  inputBinding:
    prefix: --full_data_files
- id: in_gatc_frag_file
  doc: GFF file containing all instances of the sequence GATC
  type: boolean
  inputBinding:
    prefix: --gatc_frag_file
- id: in_just_align
  doc: Just align the FASTQ files, generate BAM files, and exit
  type: boolean
  inputBinding:
    prefix: --just_align
- id: in_kde_plot
  doc: "create an Rplot of the kernel density fit for\nnormalisation (requires R)"
  type: boolean
  inputBinding:
    prefix: --kde_plot
- id: in_keep_sam
  doc: Do not delete .sam file
  type: boolean
  inputBinding:
    prefix: --keep_sam
- id: in_len
  doc: "Length to extend reads to\n[Current value: 300]"
  type: boolean
  inputBinding:
    prefix: --len
- id: in_load_defaults
  doc: "Load this saved set of defaults\n(use 'list' to list current saved options)"
  type: boolean
  inputBinding:
    prefix: --load_defaults
- id: in_max_norm_value
  doc: "Maximum log2 value to limit normalisation search at\n(default = +5)\n[Current\
    \ value: 5]"
  type: boolean
  inputBinding:
    prefix: --max_norm_value
- id: in_method_subtract
  doc: "Output values are (Dam_fusion - Dam) instead of\nlog2(Dam_fusion/Dam) (not\
    \ recommended)"
  type: boolean
  inputBinding:
    prefix: --method_subtract
- id: in_min_norm_value
  doc: "Minimum log2 value to limit normalisation search at\n(default = -5)\n[Current\
    \ value: -5]"
  type: boolean
  inputBinding:
    prefix: --min_norm_value
- id: in_no_file_filters
  doc: Do not trim filenames for output
  type: boolean
  inputBinding:
    prefix: --no_file_filters
- id: in_norm_method
  doc: "Normalisation method to use; options are:\nkde: use kernel density estimation\
    \ of log2 GATC\nfragment ratio (default)\nrpm: use readcounts per million reads\
    \ (not recommended\nfor most use cases)\n[Current value: kde]"
  type: boolean
  inputBinding:
    prefix: --norm_method
- id: in_norm_override
  doc: Normalise by this amount instead
  type: boolean
  inputBinding:
    prefix: --norm_override
- id: in_norm_steps
  doc: "Number of points in normalisation routine (default = 300)\n[Current value:\
    \ 300]"
  type: boolean
  inputBinding:
    prefix: --norm_steps
- id: in_only_sam
  doc: Do not generate bam file
  type: boolean
  inputBinding:
    prefix: --only_sam
- id: in_out_name
  doc: Use this as the fusion-protein name when saving the final
  type: boolean
  inputBinding:
    prefix: --out_name
- id: in_ps_factor
  doc: "Value of c in c*(reads/bins) formula for calculating\npseudocounts (default\
    \ = 10)\n[Current value: 10]"
  type: boolean
  inputBinding:
    prefix: --ps_factor
- id: in_pseudo_counts
  doc: "Add this value of psuedocounts instead (default: optimal\nnumber of pseudocounts\
    \ determined algorithmically)"
  type: boolean
  inputBinding:
    prefix: --pseudocounts
- id: in_cutoff_average_q
  doc: "Cutoff average Q score for aligned reads\n[Current value: 30]"
  type: boolean
  inputBinding:
    prefix: --q
- id: in_q_score_one_max
  doc: "max decile for normalising from Dam array\n[Current value: 1]"
  type: boolean
  inputBinding:
    prefix: --qscore1max
- id: in_q_score_one_min
  doc: "min decile for normalising from Dam array\n[Current value: 0.4]"
  type: boolean
  inputBinding:
    prefix: --qscore1min
- id: in_q_score_two_max
  doc: "max decile for normalising from fusion-protein array\n[Current value: 0.9]"
  type: boolean
  inputBinding:
    prefix: --qscore2max
- id: in_reset_defaults
  doc: Delete user-defined parameters
  type: boolean
  inputBinding:
    prefix: --reset_defaults
- id: in_sam_tools_path
  doc: path to samtools executable (leave blank if in path)
  type: boolean
  inputBinding:
    prefix: --samtools_path
- id: in_save_defaults
  doc: "Save runtime parameters as default\n(provide a name to differentiate different\
    \ genomes --\nthese can be loaded with 'load_defaults')"
  type: boolean
  inputBinding:
    prefix: --save_defaults
- id: in_threads
  doc: "threads for bowtie2 to use\n[Current value: 7]\n"
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_ratio
  doc: --output_format       Output tracks in this format [gff/bedgraph]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- damidseq_pipeline
