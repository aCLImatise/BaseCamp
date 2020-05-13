class: CommandLineTool
id: damidseq_pipeline.cwl
inputs:
- id: bam_files
  doc: Only process BAM files
  type: boolean
  inputBinding:
    prefix: --bamfiles
- id: bed_tools_path
  doc: path to BEDTools executable (leave blank if in path)
  type: boolean
  inputBinding:
    prefix: --bedtools_path
- id: bins
  doc: 'Width of bins to use for mapping reads [Current value: 75]'
  type: boolean
  inputBinding:
    prefix: --bins
- id: bowtie
  doc: 'Perform bowtie2 alignment [1/0] [Current value: 1]'
  type: boolean
  inputBinding:
    prefix: --bowtie
- id: bowtie2_genome_dir
  doc: Directory and basename for bowtie2 .bt2 indices
  type: boolean
  inputBinding:
    prefix: --bowtie2_genome_dir
- id: bowtie2_path
  doc: path to bowtie2 executable (leave blank if in path)
  type: boolean
  inputBinding:
    prefix: --bowtie2_path
- id: dam
  doc: Specify file to use as Dam control
  type: boolean
  inputBinding:
    prefix: --dam
- id: extend_reads
  doc: 'Perform read extension [1/0] [Current value: 1]'
  type: boolean
  inputBinding:
    prefix: --extend_reads
- id: extension_method
  doc: 'Read extension method to use; options are: full: Method used by version 1.3
    and earlier.  Extends all reads to the value set with --len. gatc: Default for
    version 1.4 and above. Extends reads to --len or to the next GATC site, whichever
    is shorter.  Using this option increases peak resolution. [Current value: gatc]'
  type: boolean
  inputBinding:
    prefix: --extension_method
- id: full_data_files
  doc: Output full binned ratio files (not only GATC array)
  type: boolean
  inputBinding:
    prefix: --full_data_files
- id: gatc_frag_file
  doc: GFF file containing all instances of the sequence GATC
  type: boolean
  inputBinding:
    prefix: --gatc_frag_file
- id: just_align
  doc: Just align the FASTQ files, generate BAM files, and exit
  type: boolean
  inputBinding:
    prefix: --just_align
- id: kde_plot
  doc: create an Rplot of the kernel density fit for normalisation (requires R)
  type: boolean
  inputBinding:
    prefix: --kde_plot
- id: keep_sam
  doc: Do not delete .sam file
  type: boolean
  inputBinding:
    prefix: --keep_sam
- id: len
  doc: 'Length to extend reads to [Current value: 300]'
  type: boolean
  inputBinding:
    prefix: --len
- id: load_defaults
  doc: Load this saved set of defaults (use 'list' to list current saved options)
  type: boolean
  inputBinding:
    prefix: --load_defaults
- id: max_norm_value
  doc: 'Maximum log2 value to limit normalisation search at (default = +5) [Current
    value: 5]'
  type: boolean
  inputBinding:
    prefix: --max_norm_value
- id: method_subtract
  doc: Output values are (Dam_fusion - Dam) instead of log2(Dam_fusion/Dam) (not recommended)
  type: boolean
  inputBinding:
    prefix: --method_subtract
- id: min_norm_value
  doc: 'Minimum log2 value to limit normalisation search at (default = -5) [Current
    value: -5]'
  type: boolean
  inputBinding:
    prefix: --min_norm_value
- id: no_file_filters
  doc: Do not trim filenames for output
  type: boolean
  inputBinding:
    prefix: --no_file_filters
- id: norm_method
  doc: 'Normalisation method to use; options are: kde: use kernel density estimation
    of log2 GATC fragment ratio (default) rpm: use readcounts per million reads (not
    recommended for most use cases) [Current value: kde]'
  type: boolean
  inputBinding:
    prefix: --norm_method
- id: norm_override
  doc: Normalise by this amount instead
  type: boolean
  inputBinding:
    prefix: --norm_override
- id: norm_steps
  doc: 'Number of points in normalisation routine (default = 300) [Current value:
    300]'
  type: boolean
  inputBinding:
    prefix: --norm_steps
- id: only_sam
  doc: Do not generate bam file
  type: boolean
  inputBinding:
    prefix: --only_sam
- id: out_name
  doc: Use this as the fusion-protein name when saving the final ratio
  type: boolean
  inputBinding:
    prefix: --out_name
- id: output_format
  doc: 'Output tracks in this format [gff/bedgraph] [Current value: bedgraph]'
  type: boolean
  inputBinding:
    prefix: --output_format
- id: ps_factor
  doc: 'Value of c in c*(reads/bins) formula for calculating pseudocounts (default
    = 10) [Current value: 10]'
  type: boolean
  inputBinding:
    prefix: --ps_factor
- id: pseudo_counts
  doc: 'Add this value of psuedocounts instead (default: optimal number of pseudocounts
    determined algorithmically)'
  type: boolean
  inputBinding:
    prefix: --pseudocounts
- id: q
  doc: 'Cutoff average Q score for aligned reads [Current value: 30]'
  type: boolean
  inputBinding:
    prefix: --q
- id: qscore1max
  doc: 'max decile for normalising from Dam array [Current value: 1]'
  type: boolean
  inputBinding:
    prefix: --qscore1max
- id: qscore1min
  doc: 'min decile for normalising from Dam array [Current value: 0.4]'
  type: boolean
  inputBinding:
    prefix: --qscore1min
- id: qscore2max
  doc: 'max decile for normalising from fusion-protein array [Current value: 0.9]'
  type: boolean
  inputBinding:
    prefix: --qscore2max
- id: reset_defaults
  doc: Delete user-defined parameters
  type: boolean
  inputBinding:
    prefix: --reset_defaults
- id: sam_tools_path
  doc: path to samtools executable (leave blank if in path)
  type: boolean
  inputBinding:
    prefix: --samtools_path
- id: save_defaults
  doc: Save runtime parameters as default (provide a name to differentiate different
    genomes -- these can be loaded with 'load_defaults')
  type: boolean
  inputBinding:
    prefix: --save_defaults
- id: threads
  doc: 'threads for bowtie2 to use [Current value: 7]'
  type: boolean
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- damidseq_pipeline
