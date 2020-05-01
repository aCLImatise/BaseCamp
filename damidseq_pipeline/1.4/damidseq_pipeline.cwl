#!/usr/bin/env cwl-runner

baseCommand:
- damidseq_pipeline
class: CommandLineTool
cwlVersion: v1.0
id: damidseq_pipeline
inputs:
- doc: Only process BAM files
  id: bam_files
  inputBinding:
    prefix: --bamfiles
  type: boolean
- doc: path to BEDTools executable (leave blank if in path)
  id: bed_tools_path
  inputBinding:
    prefix: --bedtools_path
  type: boolean
- doc: 'Width of bins to use for mapping reads [Current value: 75]'
  id: bins
  inputBinding:
    prefix: --bins
  type: boolean
- doc: 'Perform bowtie2 alignment [1/0] [Current value: 1]'
  id: bowtie
  inputBinding:
    prefix: --bowtie
  type: boolean
- doc: Directory and basename for bowtie2 .bt2 indices
  id: bowtie2_genome_dir
  inputBinding:
    prefix: --bowtie2_genome_dir
  type: boolean
- doc: path to bowtie2 executable (leave blank if in path)
  id: bowtie2_path
  inputBinding:
    prefix: --bowtie2_path
  type: boolean
- doc: Specify file to use as Dam control
  id: dam
  inputBinding:
    prefix: --dam
  type: boolean
- doc: 'Perform read extension [1/0] [Current value: 1]'
  id: extend_reads
  inputBinding:
    prefix: --extend_reads
  type: boolean
- doc: 'Read extension method to use; options are: full: Method used by version 1.3
    and earlier.  Extends all reads to the value set with --len. gatc: Default for
    version 1.4 and above. Extends reads to --len or to the next GATC site, whichever
    is shorter.  Using this option increases peak resolution. [Current value: gatc]'
  id: extension_method
  inputBinding:
    prefix: --extension_method
  type: boolean
- doc: Output full binned ratio files (not only GATC array)
  id: full_data_files
  inputBinding:
    prefix: --full_data_files
  type: boolean
- doc: GFF file containing all instances of the sequence GATC
  id: gatc_frag_file
  inputBinding:
    prefix: --gatc_frag_file
  type: boolean
- doc: Just align the FASTQ files, generate BAM files, and exit
  id: just_align
  inputBinding:
    prefix: --just_align
  type: boolean
- doc: create an Rplot of the kernel density fit for normalisation (requires R)
  id: kde_plot
  inputBinding:
    prefix: --kde_plot
  type: boolean
- doc: Do not delete .sam file
  id: keep_sam
  inputBinding:
    prefix: --keep_sam
  type: boolean
- doc: 'Length to extend reads to [Current value: 300]'
  id: len
  inputBinding:
    prefix: --len
  type: boolean
- doc: Load this saved set of defaults (use 'list' to list current saved options)
  id: load_defaults
  inputBinding:
    prefix: --load_defaults
  type: boolean
- doc: 'Maximum log2 value to limit normalisation search at (default = +5) [Current
    value: 5]'
  id: max_norm_value
  inputBinding:
    prefix: --max_norm_value
  type: boolean
- doc: Output values are (Dam_fusion - Dam) instead of log2(Dam_fusion/Dam) (not recommended)
  id: method_subtract
  inputBinding:
    prefix: --method_subtract
  type: boolean
- doc: 'Minimum log2 value to limit normalisation search at (default = -5) [Current
    value: -5]'
  id: min_norm_value
  inputBinding:
    prefix: --min_norm_value
  type: boolean
- doc: Do not trim filenames for output
  id: no_file_filters
  inputBinding:
    prefix: --no_file_filters
  type: boolean
- doc: 'Normalisation method to use; options are: kde: use kernel density estimation
    of log2 GATC fragment ratio (default) rpm: use readcounts per million reads (not
    recommended for most use cases) [Current value: kde]'
  id: norm_method
  inputBinding:
    prefix: --norm_method
  type: boolean
- doc: Normalise by this amount instead
  id: norm_override
  inputBinding:
    prefix: --norm_override
  type: boolean
- doc: 'Number of points in normalisation routine (default = 300) [Current value:
    300]'
  id: norm_steps
  inputBinding:
    prefix: --norm_steps
  type: boolean
- doc: Do not generate bam file
  id: only_sam
  inputBinding:
    prefix: --only_sam
  type: boolean
- doc: Use this as the fusion-protein name when saving the final ratio
  id: out_name
  inputBinding:
    prefix: --out_name
  type: boolean
- doc: 'Output tracks in this format [gff/bedgraph] [Current value: bedgraph]'
  id: output_format
  inputBinding:
    prefix: --output_format
  type: boolean
- doc: 'Value of c in c*(reads/bins) formula for calculating pseudocounts (default
    = 10) [Current value: 10]'
  id: ps_factor
  inputBinding:
    prefix: --ps_factor
  type: boolean
- doc: 'Add this value of psuedocounts instead (default: optimal number of pseudocounts
    determined algorithmically)'
  id: pseudo_counts
  inputBinding:
    prefix: --pseudocounts
  type: boolean
- doc: 'Cutoff average Q score for aligned reads [Current value: 30]'
  id: q
  inputBinding:
    prefix: --q
  type: boolean
- doc: 'max decile for normalising from Dam array [Current value: 1]'
  id: qscore1max
  inputBinding:
    prefix: --qscore1max
  type: boolean
- doc: 'min decile for normalising from Dam array [Current value: 0.4]'
  id: qscore1min
  inputBinding:
    prefix: --qscore1min
  type: boolean
- doc: 'max decile for normalising from fusion-protein array [Current value: 0.9]'
  id: qscore2max
  inputBinding:
    prefix: --qscore2max
  type: boolean
- doc: Delete user-defined parameters
  id: reset_defaults
  inputBinding:
    prefix: --reset_defaults
  type: boolean
- doc: path to samtools executable (leave blank if in path)
  id: sam_tools_path
  inputBinding:
    prefix: --samtools_path
  type: boolean
- doc: Save runtime parameters as default (provide a name to differentiate different
    genomes -- these can be loaded with 'load_defaults')
  id: save_defaults
  inputBinding:
    prefix: --save_defaults
  type: boolean
- doc: 'threads for bowtie2 to use [Current value: 7]'
  id: threads
  inputBinding:
    prefix: --threads
  type: boolean
