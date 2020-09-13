version 1.0

task TomboPlotPerRead {
  input {
    Boolean? var_0
    Array[String] genome_locations
    File? genome_fast_a
    Array[Int] fast_five_based_irs
    Int? num_reads
    Int? num_bases
    Boolean? box_center
    File? pdf_filename
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
    String var_11
  }
  command <<<
    tombo plot per_read \
      ~{var_11} \
      ~{if (var_0) then "--per-read-statistics-filename" else ""} \
      ~{if defined(genome_locations) then ("--genome-locations " +  '"' + genome_locations + '"') else ""} \
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
  parameter_meta {
    var_0: ""
    genome_locations: "Genomic locations at which to plot signal. Format\\nlocations as \\\"chrm:position[:strand]\\n[chrm2:position2[:strand2] ...]\\\" (strand not\\napplicable for all applications)"
    genome_fast_a: "FASTA file used to re-squiggle. For faster sequence\\naccess."
    fast_five_based_irs: "Directories containing fast5 files."
    num_reads: "Number of reads to plot. Default: 100"
    num_bases: "Number of bases to plot/output. Default: 51"
    box_center: "Plot a box around the central base."
    pdf_filename: "PDF filename to store plot(s). Default:\\ntombo_results.per_read_stats.pdf"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall-\\ngroup]/) containing basecalls and created within\\n[--corrected-group] containing re-squiggle results.\\nDefault: ['BaseCalled_template']"
    quiet: "Don't print status information."
    var_11: "[--genome-fasta GENOME_FASTA]"
  }
  output {
    File out_stdout = stdout()
  }
}