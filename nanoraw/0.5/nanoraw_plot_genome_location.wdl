version 1.0

task NanorawPlotGenomeLocation {
  input {
    Array[String] base_call_subgroups
    Boolean? two_d
    Array[String] fast_five_based_irs
    Array[String] genome_locations
    Array[String] fast_five_based_irs_two
    String? corrected_group
    String? over_plot_threshold
    String? over_plot_type
    Array[String] obs_per_base_filter
    String? pdf_filename
    String? num_bases
    Boolean? quiet
  }
  command <<<
    nanoraw plot_genome_location \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{true="--2d" false="" two_d} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(genome_locations) then ("--genome-locations " +  '"' + genome_locations + '"') else ""} \
      ~{if defined(fast_five_based_irs_two) then ("--fast5-basedirs2 " +  '"' + fast_five_based_irs_two + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(over_plot_threshold) then ("--overplot-threshold " +  '"' + over_plot_threshold + '"') else ""} \
      ~{if defined(over_plot_type) then ("--overplot-type " +  '"' + over_plot_type + '"') else ""} \
      ~{if defined(obs_per_base_filter) then ("--obs-per-base-filter " +  '"' + obs_per_base_filter + '"') else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(num_bases) then ("--num-bases " +  '"' + num_bases + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    base_call_subgroups: "FAST5 subgroup (under Analyses/[corrected-group]) where individual template and/or complement reads are stored. Default: ['BaseCalled_template']"
    two_d: "Input contains 2D reads. Equivalent to `--basecall- subgroups BaseCalled_template BaseCalled_complement`"
    fast_five_based_irs: "Directories containing fast5 files."
    genome_locations: "Plot signal at specified genomic locations. Format locations as \"chrm:position[:strand] [chrm2:position2[:strand2] ...]\" (strand not applicable for all applications)"
    fast_five_based_irs_two: "Second set of directories containing fast5 files to compare."
    corrected_group: "FAST5 group to access/plot created by genome_resquiggle script. Default: RawGenomeCorrected_000"
    over_plot_threshold: "Number of reads to trigger alternative plot type instead of raw signal due to overplotting. Default: 50"
    over_plot_type: "Plot type for regions with higher coverage. Choices: Downsample (default), Boxplot , Quantile, Violin"
    obs_per_base_filter: "Filter reads for plotting baseed on threshold of percentiles of the number of observations assigned to a base (default no filter). Format thresholds as \"percentile:thresh [pctl2:thresh2 ...]\" E.g. reads with 99th pctl <200 obs and max <5k obs would be \"99:200 100:5000\"."
    pdf_filename: "PDF filename to store plot(s). Default: Nanopore_read_coverage.genome_locations.pdf"
    num_bases: "Number of bases to plot from region. Default: 51"
    quiet: "Don't print status information."
  }
}