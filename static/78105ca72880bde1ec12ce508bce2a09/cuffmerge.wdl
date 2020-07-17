version 1.0

task Cuffmerge {
  input {
    Boolean? h_slash_help
    Boolean? outputdir_directory_written
    Boolean? g_slash_ref_gtf
    Boolean? s_slash_ref_sequence
    String? min_isoform_fraction
    Boolean? p_slash_num_threads
    Boolean? keep_tmp
    String assembly_gtf_list_dot_txt
  }
  command <<<
    cuffmerge \
      ~{assembly_gtf_list_dot_txt} \
      ~{true="-h/--help" false="" h_slash_help} \
      ~{true="-o" false="" outputdir_directory_written} \
      ~{true="-g/--ref-gtf" false="" g_slash_ref_gtf} \
      ~{true="-s/--ref-sequence" false="" s_slash_ref_sequence} \
      ~{if defined(min_isoform_fraction) then ("--min-isoform-fraction " +  '"' + min_isoform_fraction + '"') else ""} \
      ~{true="-p/--num-threads" false="" p_slash_num_threads} \
      ~{true="--keep-tmp" false="" keep_tmp}
  >>>
  parameter_meta {
    h_slash_help: "Prints the help message and exits"
    outputdir_directory_written: "<output_dir>     Directory where merged assembly will be written  [ default: ./merged_asm  ]"
    g_slash_ref_gtf: "An optional \"reference\" annotation GTF."
    s_slash_ref_sequence: "<seq_dir>/<seq_fasta> Genomic DNA sequences for the reference."
    min_isoform_fraction: "Discard isoforms with abundance below this       [ default:           0.05 ]"
    p_slash_num_threads: "<int>            Use this many threads to merge assemblies.       [ default:             1  ]"
    keep_tmp: "Keep all intermediate files during merge"
    assembly_gtf_list_dot_txt: ""
  }
}