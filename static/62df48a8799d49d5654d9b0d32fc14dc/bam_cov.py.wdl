version 1.0

task BamCovpy {
  input {
    Boolean? normalize_coverage_cutting
    Boolean? shift_event_fragment
    Int? clip_max
    Int? clip_multi
    File? fasta_obtain_sequence
    Boolean? control_local_gc
    Int? iterations_em_distribute
    Directory? output_directory
    Int? filter_alignments_mapq
    Int? gaussian_standard_deviation
    Boolean? strand
    Boolean? alignments_are_unsorted
    Int? fragment_shift_forward
    Int? fragment_shift_reverse
    String bam_file
    String output_file
  }
  command <<<
    bam_cov_py \
      ~{bam_file} \
      ~{output_file} \
      ~{if (normalize_coverage_cutting) then "-b" else ""} \
      ~{if (shift_event_fragment) then "-c" else ""} \
      ~{if defined(clip_max) then ("--clip_max " +  '"' + clip_max + '"') else ""} \
      ~{if defined(clip_multi) then ("--clip_multi " +  '"' + clip_multi + '"') else ""} \
      ~{if defined(fasta_obtain_sequence) then ("-f " +  '"' + fasta_obtain_sequence + '"') else ""} \
      ~{if (control_local_gc) then "-g" else ""} \
      ~{if defined(iterations_em_distribute) then ("-m " +  '"' + iterations_em_distribute + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(filter_alignments_mapq) then ("-q " +  '"' + filter_alignments_mapq + '"') else ""} \
      ~{if defined(gaussian_standard_deviation) then ("-s " +  '"' + gaussian_standard_deviation + '"') else ""} \
      ~{if (strand) then "--strand" else ""} \
      ~{if (alignments_are_unsorted) then "-u" else ""} \
      ~{if defined(fragment_shift_forward) then ("-v " +  '"' + fragment_shift_forward + '"') else ""} \
      ~{if defined(fragment_shift_reverse) then ("-w " +  '"' + fragment_shift_reverse + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  parameter_meta {
    normalize_coverage_cutting: "Normalize coverage for a cutting bias model for k-mers\\n[Default: none]"
    shift_event_fragment: "Shift the event to the fragment center, learning the\\ndistribution for single end reads [Default: False]"
    clip_max: "Clip coverage using adaptively-determined thresholds\\nto this maximum [Default: none]"
    clip_multi: "Maximum coverage at a single position from multi-\\nmapping reads [Default: none]"
    fasta_obtain_sequence: "FASTA to obtain sequence to control for GC% [Default:\\nnone]"
    control_local_gc: "Control for local GC% [Default: False]"
    iterations_em_distribute: "Iterations of EM to distribute multi-mapping reads\\n[Default: 0]"
    output_directory: "Output directory [Default: bam_cov]"
    filter_alignments_mapq: "Filter alignments for MAPQ >= threshold [Default: 2]"
    gaussian_standard_deviation: "Gaussian standard deviation to smooth coverage\\nestimates with [Default: 32]"
    strand: "Stranded sequencing, output forward and reverse\\ncoverage tracks [Default: False]"
    alignments_are_unsorted: "Alignments are unsorted [Default: False]"
    fragment_shift_forward: "Fragment shift for forward end read [Default: 0]"
    fragment_shift_reverse: "Fragment shift for reverse end read [Default: 0]"
    bam_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}