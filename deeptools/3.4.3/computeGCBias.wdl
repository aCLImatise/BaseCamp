version 1.0

task ComputeGCBias {
  input {
    String? bam_file
    String? effective_genome_size
    String? genome
    File? gc_bias_frequencies_file
    Int? number_of_processors
    Boolean? verbose
    File? bias_plot
    Boolean? plot_file_format
    Int? region_size
    File? b
    String? g
    String? l
  }
  command <<<
    computeGCBias \
      ~{if defined(bam_file) then ("--bamfile " +  '"' + bam_file + '"') else ""} \
      ~{if defined(effective_genome_size) then ("--effectiveGenomeSize " +  '"' + effective_genome_size + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(gc_bias_frequencies_file) then ("--GCbiasFrequenciesFile " +  '"' + gc_bias_frequencies_file + '"') else ""} \
      ~{if defined(number_of_processors) then ("--numberOfProcessors " +  '"' + number_of_processors + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(bias_plot) then ("--biasPlot " +  '"' + bias_plot + '"') else ""} \
      ~{true="--plotFileFormat" false="" plot_file_format} \
      ~{if defined(region_size) then ("--regionSize " +  '"' + region_size + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    bam_file: "file, -b bam file Sorted BAM file. (default: None)"
    effective_genome_size: "The effective genome size is the portion of the genome that is mappable. Large fractions of the genome are stretches of NNNN that should be discarded. Also, if repetitive regions were not included in the mapping of reads, the effective genome size needs to be adjusted accordingly. A table of values is available here: http ://deeptools.readthedocs.io/en/latest/content/feature/ effectiveGenomeSize.html . (default: None)"
    genome: "FILE, -g 2bit FILE Genome in two bit format. Most genomes can be found here: http://hgdownload.cse.ucsc.edu/gbdb/ Search for the .2bit ending. Otherwise, fasta files can be converted to 2bit using the UCSC programm called faToTwoBit available for different plattforms at http://hgdownload.cse.ucsc.edu/admin/exe/ (default: None)"
    gc_bias_frequencies_file: "Path to save the file containing the observed and expected read frequencies per %GC-content. This file is needed to run the correctGCBias tool. This is a text file. (default: None)"
    number_of_processors: "Number of processors to use. Type \"max/2\" to use half the maximum number of processors or \"max\" to use all available processors. (Default: 1)"
    verbose: "Set to see processing messages. (default: False)"
    bias_plot: "NAME  If given, a diagnostic image summarizing the GC-bias will be saved. (default: None)"
    plot_file_format: "image format type. If given, this option overrides the image format based on the plotFile ending. The available options are: \"png\", \"eps\", \"pdf\", \"plotly\" and \"svg\" (default: None)"
    region_size: "To plot the reads per %GC over a regionthe size of the region is required. By default, the bin size is set to 300 bases, which is close to the standard fragment size for Illumina machines. However, if the depth of sequencing is low, a larger bin size will be required, otherwise many bins will not overlap with any read (Default: 300)"
    b: ""
    g: ""
    l: ""
  }
}