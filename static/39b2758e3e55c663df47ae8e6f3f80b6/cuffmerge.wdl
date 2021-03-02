version 1.0

task Cuffmerge {
  input {
    Boolean? outputdir_directory_written
    Boolean? ref_gtf
    Boolean? ref_sequence
    Int? min_isoform_fraction
    Boolean? num_threads
    Boolean? keep_tmp
  }
  command <<<
    cuffmerge \
      ~{if (outputdir_directory_written) then "-o" else ""} \
      ~{if (ref_gtf) then "--ref-gtf" else ""} \
      ~{if (ref_sequence) then "--ref-sequence" else ""} \
      ~{if defined(min_isoform_fraction) then ("--min-isoform-fraction " +  '"' + min_isoform_fraction + '"') else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (keep_tmp) then "--keep-tmp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outputdir_directory_written: "<output_dir>     Directory where merged assembly will be written  [ default: ./merged_asm  ]"
    ref_gtf: "An optional \\\"reference\\\" annotation GTF."
    ref_sequence: "<seq_dir>/<seq_fasta> Genomic DNA sequences for the reference."
    min_isoform_fraction: "Discard isoforms with abundance below this       [ default:           0.05 ]"
    num_threads: "<int>            Use this many threads to merge assemblies.       [ default:             1  ]"
    keep_tmp: "Keep all intermediate files during merge"
  }
  output {
    File out_stdout = stdout()
  }
}