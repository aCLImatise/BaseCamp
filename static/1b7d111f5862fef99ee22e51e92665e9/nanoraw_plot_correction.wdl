version 1.0

task NanorawPlotCorrection {
  input {
    Array[Int] fast_five_based_irs
    String? region_type
    Int? corrected_group
    Int? base_call_subgroup
    File? pdf_filename
    Int? num_reads
    Int? num_obs
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
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    region_type: "Region to plot within each read. Choices are: random\\n(default), start, end."
    corrected_group: "FAST5 group to access/plot created by\\ngenome_resquiggle script. Default:\\nRawGenomeCorrected_000"
    base_call_subgroup: "FAST5 subgroup (under Analyses/[corrected-group])\\nwhere individual template or complement read is\\nstored. Default: BaseCalled_template"
    pdf_filename: "PDF filename to store plot(s). Default:\\nNanopore_genome_correction.pdf"
    num_reads: "Number of reads to plot (one region per read).\\nDefault: 10"
    num_obs: "Number of observations to plot in each region.\\nDefault: 500"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}