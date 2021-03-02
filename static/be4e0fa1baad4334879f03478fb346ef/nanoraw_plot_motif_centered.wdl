version 1.0

task NanorawPlotMotifCentered {
  input {
    Array[String] base_call_subgroups
    Boolean? two_d
    Array[Int] fast_five_based_irs
    String? motif
    File? genome_fast_a
    Array[Int] fast_five_based_irs_two
    Int? corrected_group
    Int? over_plot_threshold
    String? over_plot_type
    Array[String] obs_per_base_filter
    Boolean? deepest_coverage
    File? pdf_filename
    Int? num_regions
    Int? num_bases
    Boolean? quiet
  }
  command <<<
    nanoraw plot_motif_centered \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (two_d) then "--2d" else ""} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(motif) then ("--motif " +  '"' + motif + '"') else ""} \
      ~{if defined(genome_fast_a) then ("--genome-fasta " +  '"' + genome_fast_a + '"') else ""} \
      ~{if defined(fast_five_based_irs_two) then ("--fast5-basedirs2 " +  '"' + fast_five_based_irs_two + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(over_plot_threshold) then ("--overplot-threshold " +  '"' + over_plot_threshold + '"') else ""} \
      ~{if defined(over_plot_type) then ("--overplot-type " +  '"' + over_plot_type + '"') else ""} \
      ~{if defined(obs_per_base_filter) then ("--obs-per-base-filter " +  '"' + obs_per_base_filter + '"') else ""} \
      ~{if (deepest_coverage) then "--deepest-coverage" else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(num_regions) then ("--num-regions " +  '"' + num_regions + '"') else ""} \
      ~{if defined(num_bases) then ("--num-bases " +  '"' + num_bases + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    base_call_subgroups: "FAST5 subgroup (under Analyses/[corrected-group])\\nwhere individual template and/or complement reads are\\nstored. Default: ['BaseCalled_template']"
    two_d: "Input contains 2D reads. Equivalent to `--basecall-\\nsubgroups BaseCalled_template BaseCalled_complement`"
    fast_five_based_irs: "Directories containing fast5 files."
    motif: "A motif to plot the most significant regions genomic\\nregions as well as statistic distributions at each\\ngenomic base in the region. Supports single letter\\ncodes."
    genome_fast_a: "FASTA file used to map reads with \\\"genome_resquiggle\\\"\\ncommand."
    fast_five_based_irs_two: "Second set of directories containing fast5 files to\\ncompare."
    corrected_group: "FAST5 group to access/plot created by\\ngenome_resquiggle script. Default:\\nRawGenomeCorrected_000"
    over_plot_threshold: "Number of reads to trigger alternative plot type\\ninstead of raw signal due to overplotting. Default: 50"
    over_plot_type: "Plot type for regions with higher coverage. Choices:\\nDownsample (default), Boxplot , Quantile, Violin"
    obs_per_base_filter: "Filter reads for plotting baseed on threshold of\\npercentiles of the number of observations assigned to\\na base (default no filter). Format thresholds as\\n\\\"percentile:thresh [pctl2:thresh2 ...]\\\" E.g. reads\\nwith 99th pctl <200 obs and max <5k obs would be\\n\\\"99:200 100:5000\\\"."
    deepest_coverage: "Plot the deepest coverage regions."
    pdf_filename: "PDF filename to store plot(s). Default:\\nNanopore_read_coverage.motif_centered.pdf"
    num_regions: "Number of regions to plot. Default: 10"
    num_bases: "Number of bases to plot from region. Default: 51"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}