version 1.0

task NanorawPlotCorrection {
  input {
    Array[String] fast_five_based_irs
    String? region_type
    String? corrected_group
    String? base_call_subgroup
    String? pdf_filename
    String? num_reads
    String? num_obs
    Boolean? quiet
  }
  command <<<
    nanoraw plot_correction \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(region_type) then ("--region-type " +  '"' + region_type + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroup) then ("--basecall-subgroup " +  '"' + base_call_subgroup + '"') else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(num_reads) then ("--num-reads " +  '"' + num_reads + '"') else ""} \
      ~{if defined(num_obs) then ("--num-obs " +  '"' + num_obs + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    region_type: "Region to plot within each read. Choices are: random (default), start, end."
    corrected_group: "FAST5 group to access/plot created by genome_resquiggle script. Default: RawGenomeCorrected_000"
    base_call_subgroup: "FAST5 subgroup (under Analyses/[corrected-group]) where individual template or complement read is stored. Default: BaseCalled_template"
    pdf_filename: "PDF filename to store plot(s). Default: Nanopore_genome_correction.pdf"
    num_reads: "Number of reads to plot (one region per read). Default: 10"
    num_obs: "Number of observations to plot in each region. Default: 500"
    quiet: "Don't print status information."
  }
}