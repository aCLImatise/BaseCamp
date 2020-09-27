version 1.0

task Cuffmerge {
  input {
    Boolean? h_slash_help
    Boolean? outputdir_directory_written
    Boolean? g_slash_ref_gtf
    Boolean? s_slash_ref_sequence
    Int? min_isoform_fraction
    Boolean? p_slash_num_threads
    Boolean? keep_tmp
  }
  command <<<
    cuffmerge \
      ~{if (h_slash_help) then "-h/--help" else ""} \
      ~{if (outputdir_directory_written) then "-o" else ""} \
      ~{if (g_slash_ref_gtf) then "-g/--ref-gtf" else ""} \
      ~{if (s_slash_ref_sequence) then "-s/--ref-sequence" else ""} \
      ~{if defined(min_isoform_fraction) then ("--min-isoform-fraction " +  '"' + min_isoform_fraction + '"') else ""} \
      ~{if (p_slash_num_threads) then "-p/--num-threads" else ""} \
      ~{if (keep_tmp) then "--keep-tmp" else ""}
  >>>
  parameter_meta {
    h_slash_help: "Prints the help message and exits"
    outputdir_directory_written: "<output_dir>     Directory where merged assembly will be written  [ default: ./merged_asm  ]"
    g_slash_ref_gtf: "An optional \\\"reference\\\" annotation GTF."
    s_slash_ref_sequence: "<seq_dir>/<seq_fasta> Genomic DNA sequences for the reference."
    min_isoform_fraction: "Discard isoforms with abundance below this       [ default:           0.05 ]"
    p_slash_num_threads: "<int>            Use this many threads to merge assemblies.       [ default:             1  ]"
    keep_tmp: "Keep all intermediate files during merge"
  }
  output {
    File out_stdout = stdout()
  }
}