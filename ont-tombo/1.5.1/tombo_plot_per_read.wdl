version 1.0

task TomboPlotPerRead {
  input {
    Array[String] genome_locations
    String? per_read_statistics_filename
    String? genome_fast_a
    Array[String] fast_five_based_irs
    String? num_reads
    String? num_bases
    Boolean? box_center
    String? pdf_filename
    String? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo plot per_read \
      ~{if defined(genome_locations) then ("--genome-locations " +  '"' + genome_locations + '"') else ""} \
      ~{if defined(per_read_statistics_filename) then ("--per-read-statistics-filename " +  '"' + per_read_statistics_filename + '"') else ""} \
      ~{if defined(genome_fast_a) then ("--genome-fasta " +  '"' + genome_fast_a + '"') else ""} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(num_reads) then ("--num-reads " +  '"' + num_reads + '"') else ""} \
      ~{if defined(num_bases) then ("--num-bases " +  '"' + num_bases + '"') else ""} \
      ~{true="--box-center" false="" box_center} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    genome_locations: "Genomic locations at which to plot signal. Format locations as \"chrm:position[:strand] [chrm2:position2[:strand2] ...]\" (strand not applicable for all applications)"
    per_read_statistics_filename: "Binary file containing per-read statistics from statistical testing."
    genome_fast_a: "FASTA file used to re-squiggle. For faster sequence access."
    fast_five_based_irs: "Directories containing fast5 files."
    num_reads: "Number of reads to plot. Default: 100"
    num_bases: "Number of bases to plot/output. Default: 51"
    box_center: "Plot a box around the central base."
    pdf_filename: "PDF filename to store plot(s). Default: tombo_results.per_read_stats.pdf"
    corrected_group: "FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall- group]/) containing basecalls and created within [--corrected-group] containing re-squiggle results. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
}