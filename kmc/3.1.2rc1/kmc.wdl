version 1.0

task Kmc {
  input {
    Boolean? verbose_mode_shows
    Boolean? len_kmer_length
    Boolean? size_max_amount
    Boolean? sm
    Boolean? par_signature_length
    Boolean? aqmbam_input_fasta
    Boolean? ci
    Boolean? cs
    Boolean? cx
    Boolean? turn_transformation_kmers
    Boolean? turn_ramonly_mode
    Boolean? value_number_bins
    Boolean? value_total_number
    Boolean? sf
    Boolean? sp
    Boolean? sr
    Boolean? filename_file_name
    Boolean? _without_output
    String input_file_name
    String output_file_name
    String working_directory
  }
  command <<<
    kmc \
      ~{input_file_name} \
      ~{output_file_name} \
      ~{working_directory} \
      ~{true="-v" false="" verbose_mode_shows} \
      ~{true="-k" false="" len_kmer_length} \
      ~{true="-m" false="" size_max_amount} \
      ~{true="-sm" false="" sm} \
      ~{true="-p" false="" par_signature_length} \
      ~{true="-f" false="" aqmbam_input_fasta} \
      ~{true="-ci" false="" ci} \
      ~{true="-cs" false="" cs} \
      ~{true="-cx" false="" cx} \
      ~{true="-b" false="" turn_transformation_kmers} \
      ~{true="-r" false="" turn_ramonly_mode} \
      ~{true="-n" false="" value_number_bins} \
      ~{true="-t" false="" value_total_number} \
      ~{true="-sf" false="" sf} \
      ~{true="-sp" false="" sp} \
      ~{true="-sr" false="" sr} \
      ~{true="-j" false="" filename_file_name} \
      ~{true="-w" false="" _without_output}
  >>>
  parameter_meta {
    verbose_mode_shows: "- verbose mode (shows all parameter settings); default: false"
    len_kmer_length: "<len> - k-mer length (k from 1 to 256; default: 25)"
    size_max_amount: "<size> - max amount of RAM in GB (from 1 to 1024); default: 12"
    sm: "- use strict memory mode (memory limit from -m<n> switch will not be exceeded)"
    par_signature_length: "<par> - signature length (5, 6, 7, 8, 9, 10, 11); default: 9"
    aqmbam_input_fasta: "<a/q/m/bam> - input in FASTA format (-fa), FASTQ format (-fq), multi FASTA (-fm) or BAM (-fbam); default: FASTQ"
    ci: "<value> - exclude k-mers occurring less than <value> times (default: 2)"
    cs: "<value> - maximal value of a counter (default: 255)"
    cx: "<value> - exclude k-mers occurring more of than <value> times (default: 1e9)"
    turn_transformation_kmers: "- turn off transformation of k-mers into canonical form"
    turn_ramonly_mode: "- turn on RAM-only mode "
    value_number_bins: "<value> - number of bins "
    value_total_number: "<value> - total number of threads (default: no. of CPU cores)"
    sf: "<value> - number of FASTQ reading threads"
    sp: "<value> - number of splitting threads"
    sr: "<value> - number of threads for 2nd stage"
    filename_file_name: "<file_name> - file name with execution summary in JSON format"
    _without_output: "- without output"
    input_file_name: ""
    output_file_name: ""
    working_directory: ""
  }
}