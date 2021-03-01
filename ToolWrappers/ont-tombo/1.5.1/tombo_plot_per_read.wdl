version 1.0

task TomboPlotPerRead {
  input {
    Array[String] genome_locations
    File? per_read_statistics_filename
    File? genome_fast_a
    Array[Int] fast_five_based_irs
    Int? num_reads
    Int? num_bases
    Boolean? box_center
    File? pdf_filename
    Int? corrected_group
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
      ~{if (box_center) then "--box-center" else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genome_locations: "Genomic locations at which to plot signal. Format\\nlocations as \\\"chrm:position[:strand]\\n[chrm2:position2[:strand2] ...]\\\" (strand not\\napplicable for all applications)"
    per_read_statistics_filename: "Binary file containing per-read statistics from\\nstatistical testing."
    genome_fast_a: "FASTA file used to re-squiggle. For faster sequence\\naccess."
    fast_five_based_irs: "Directories containing fast5 files."
    num_reads: "Number of reads to plot. Default: 100"
    num_bases: "Number of bases to plot/output. Default: 51"
    box_center: "Plot a box around the central base."
    pdf_filename: "PDF filename to store plot(s). Default:\\ntombo_results.per_read_stats.pdf"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall-\\ngroup]/) containing basecalls and created within\\n[--corrected-group] containing re-squiggle results.\\nDefault: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}