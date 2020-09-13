version 1.0

task Fermi2plUnitig {
  input {
    String? output_prefix
    Int? approximate_genome_size
    Boolean? pass_error_correction
    Int? primary_read_length
    Int? use_intmer_posttrimmingfiltering
    Int? min_overlap_length_unitig
    Int? min_overlap_length_graph
    Int? min_overlap_length_unambiguous
    Int? number_of_threads
    Boolean? apply_error_correction
    Boolean? more_options
    Boolean? options
    Int fermi_two_do_tpl
    String in_dot_fq
  }
  command <<<
    fermi2_pl unitig \
      ~{fermi_two_do_tpl} \
      ~{in_dot_fq} \
      ~{if defined(output_prefix) then ("-p " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(approximate_genome_size) then ("-s " +  '"' + approximate_genome_size + '"') else ""} \
      ~{if (pass_error_correction) then "-2" else ""} \
      ~{if defined(primary_read_length) then ("-l " +  '"' + primary_read_length + '"') else ""} \
      ~{if defined(use_intmer_posttrimmingfiltering) then ("-T " +  '"' + use_intmer_posttrimmingfiltering + '"') else ""} \
      ~{if defined(min_overlap_length_unitig) then ("-k " +  '"' + min_overlap_length_unitig + '"') else ""} \
      ~{if defined(min_overlap_length_graph) then ("-o " +  '"' + min_overlap_length_graph + '"') else ""} \
      ~{if defined(min_overlap_length_unambiguous) then ("-m " +  '"' + min_overlap_length_unambiguous + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if (apply_error_correction) then "-E" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    output_prefix: "output prefix [fmdef]"
    approximate_genome_size: "approximate genome size [100m]"
    pass_error_correction: "2-pass error correction"
    primary_read_length: "primary read length [101]"
    use_intmer_posttrimmingfiltering: "use INT-mer for post-trimming/filtering [61]"
    min_overlap_length_unitig: "min overlap length during unitig construction [based on -l]"
    min_overlap_length_graph: "min overlap length during graph cleaning [based on -l]"
    min_overlap_length_unambiguous: "min overlap length for unambiguous merging [based on -l]"
    number_of_threads: "number of threads [4]"
    apply_error_correction: "don't apply error correction"
    more_options: ""
    options: ""
    fermi_two_do_tpl: ""
    in_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}