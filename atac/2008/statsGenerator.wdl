version 1.0

task StatsGenerator {
  input {
    Boolean? read_input_from
    Boolean? write_stats_files
    Boolean? use_genome_size
    Boolean? ta
    Boolean? tb
  }
  command <<<
    statsGenerator \
      ~{true="-a" false="" read_input_from} \
      ~{true="-p" false="" write_stats_files} \
      ~{true="-g" false="" use_genome_size} \
      ~{true="-ta" false="" ta} \
      ~{true="-tb" false="" tb}
  >>>
  parameter_meta {
    read_input_from: "read input from 'file.atac'"
    write_stats_files: "write stats to files prefixed with 'outprefix'"
    use_genome_size: "use a genome size of g for the Nx computation, defaults to the length of the A sequence.  Or use the actual length of sequence A or B."
    ta: "read tandem repeats for A from trfile"
    tb: "read tandem repeats for B from trfile"
  }
}