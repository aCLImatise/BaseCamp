version 1.0

task DamidseqPipeline {
  input {
    Boolean? bam_files
    Boolean? bed_tools_path
    Boolean? bins
    Boolean? bowtie
    Boolean? bowtie_two_genome_dir
    Boolean? bowtie_two_path
    Boolean? dam
    Boolean? extend_reads
    Boolean? extension_method
    Boolean? full_data_files
    Boolean? gatc_frag_file
    Boolean? just_align
    Boolean? kde_plot
    Boolean? keep_sam
    Boolean? len
    Boolean? load_defaults
    Boolean? max_norm_value
    Boolean? method_subtract
    Boolean? min_norm_value
    Boolean? no_file_filters
    Boolean? norm_method
    Boolean? norm_override
    Boolean? norm_steps
    Boolean? only_sam
    Boolean? out_name
    Boolean? ps_factor
    Boolean? pseudo_counts
    Boolean? cutoff_average_q
    Boolean? q_score_one_max
    Boolean? q_score_one_min
    Boolean? q_score_two_max
    Boolean? reset_defaults
    Boolean? sam_tools_path
    Boolean? save_defaults
    Boolean? threads
    String ratio
  }
  command <<<
    damidseq_pipeline \
      ~{ratio} \
      ~{if (bam_files) then "--bamfiles" else ""} \
      ~{if (bed_tools_path) then "--bedtools_path" else ""} \
      ~{if (bins) then "--bins" else ""} \
      ~{if (bowtie) then "--bowtie" else ""} \
      ~{if (bowtie_two_genome_dir) then "--bowtie2_genome_dir" else ""} \
      ~{if (bowtie_two_path) then "--bowtie2_path" else ""} \
      ~{if (dam) then "--dam" else ""} \
      ~{if (extend_reads) then "--extend_reads" else ""} \
      ~{if (extension_method) then "--extension_method" else ""} \
      ~{if (full_data_files) then "--full_data_files" else ""} \
      ~{if (gatc_frag_file) then "--gatc_frag_file" else ""} \
      ~{if (just_align) then "--just_align" else ""} \
      ~{if (kde_plot) then "--kde_plot" else ""} \
      ~{if (keep_sam) then "--keep_sam" else ""} \
      ~{if (len) then "--len" else ""} \
      ~{if (load_defaults) then "--load_defaults" else ""} \
      ~{if (max_norm_value) then "--max_norm_value" else ""} \
      ~{if (method_subtract) then "--method_subtract" else ""} \
      ~{if (min_norm_value) then "--min_norm_value" else ""} \
      ~{if (no_file_filters) then "--no_file_filters" else ""} \
      ~{if (norm_method) then "--norm_method" else ""} \
      ~{if (norm_override) then "--norm_override" else ""} \
      ~{if (norm_steps) then "--norm_steps" else ""} \
      ~{if (only_sam) then "--only_sam" else ""} \
      ~{if (out_name) then "--out_name" else ""} \
      ~{if (ps_factor) then "--ps_factor" else ""} \
      ~{if (pseudo_counts) then "--pseudocounts" else ""} \
      ~{if (cutoff_average_q) then "--q" else ""} \
      ~{if (q_score_one_max) then "--qscore1max" else ""} \
      ~{if (q_score_one_min) then "--qscore1min" else ""} \
      ~{if (q_score_two_max) then "--qscore2max" else ""} \
      ~{if (reset_defaults) then "--reset_defaults" else ""} \
      ~{if (sam_tools_path) then "--samtools_path" else ""} \
      ~{if (save_defaults) then "--save_defaults" else ""} \
      ~{if (threads) then "--threads" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam_files: "Only process BAM files"
    bed_tools_path: "path to BEDTools executable (leave blank if in path)"
    bins: "Width of bins to use for mapping reads\\n[Current value: 75]"
    bowtie: "Perform bowtie2 alignment [1/0]\\n[Current value: 1]"
    bowtie_two_genome_dir: "Directory and basename for bowtie2 .bt2 indices"
    bowtie_two_path: "path to bowtie2 executable (leave blank if in path)"
    dam: "Specify file to use as Dam control"
    extend_reads: "Perform read extension [1/0]\\n[Current value: 1]"
    extension_method: "Read extension method to use; options are:\\nfull: Method used by version 1.3 and earlier.  Extends\\nall reads to the value set with --len.\\ngatc: Default for version 1.4 and above. Extends reads\\nto --len or to the next GATC site, whichever is\\nshorter.  Using this option increases peak resolution.\\n[Current value: gatc]"
    full_data_files: "Output full binned ratio files (not only GATC array)"
    gatc_frag_file: "GFF file containing all instances of the sequence GATC"
    just_align: "Just align the FASTQ files, generate BAM files, and exit"
    kde_plot: "create an Rplot of the kernel density fit for\\nnormalisation (requires R)"
    keep_sam: "Do not delete .sam file"
    len: "Length to extend reads to\\n[Current value: 300]"
    load_defaults: "Load this saved set of defaults\\n(use 'list' to list current saved options)"
    max_norm_value: "Maximum log2 value to limit normalisation search at\\n(default = +5)\\n[Current value: 5]"
    method_subtract: "Output values are (Dam_fusion - Dam) instead of\\nlog2(Dam_fusion/Dam) (not recommended)"
    min_norm_value: "Minimum log2 value to limit normalisation search at\\n(default = -5)\\n[Current value: -5]"
    no_file_filters: "Do not trim filenames for output"
    norm_method: "Normalisation method to use; options are:\\nkde: use kernel density estimation of log2 GATC\\nfragment ratio (default)\\nrpm: use readcounts per million reads (not recommended\\nfor most use cases)\\n[Current value: kde]"
    norm_override: "Normalise by this amount instead"
    norm_steps: "Number of points in normalisation routine (default = 300)\\n[Current value: 300]"
    only_sam: "Do not generate bam file"
    out_name: "Use this as the fusion-protein name when saving the final"
    ps_factor: "Value of c in c*(reads/bins) formula for calculating\\npseudocounts (default = 10)\\n[Current value: 10]"
    pseudo_counts: "Add this value of psuedocounts instead (default: optimal\\nnumber of pseudocounts determined algorithmically)"
    cutoff_average_q: "Cutoff average Q score for aligned reads\\n[Current value: 30]"
    q_score_one_max: "max decile for normalising from Dam array\\n[Current value: 1]"
    q_score_one_min: "min decile for normalising from Dam array\\n[Current value: 0.4]"
    q_score_two_max: "max decile for normalising from fusion-protein array\\n[Current value: 0.9]"
    reset_defaults: "Delete user-defined parameters"
    sam_tools_path: "path to samtools executable (leave blank if in path)"
    save_defaults: "Save runtime parameters as default\\n(provide a name to differentiate different genomes --\\nthese can be loaded with 'load_defaults')"
    threads: "threads for bowtie2 to use\\n[Current value: 7]\\n"
    ratio: "--output_format       Output tracks in this format [gff/bedgraph]"
  }
  output {
    File out_stdout = stdout()
  }
}