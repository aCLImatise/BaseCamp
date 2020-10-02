version 1.0

task Runbwamem {
  input {
    String? prefix_output_files
    String? read_group_line
    Int? read_pacbio_ontd
    Int? number_of_threads
    Boolean? apply_hla_typing
    Boolean? trim_pe_resequencing
    Boolean? mark_duplicate_samblaster
    Boolean? bam_input_shuffle
    Boolean? sort_output_alignment
    Boolean? keep_temporary_files
    Boolean? mark_shorter_split
    Boolean? more_options
    Boolean? options
    String idx_base
    Int file_one
    Int? file_two
  }
  command <<<
    run_bwamem \
      ~{idx_base} \
      ~{file_one} \
      ~{file_two} \
      ~{if defined(prefix_output_files) then ("-o " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(read_group_line) then ("-R " +  '"' + read_group_line + '"') else ""} \
      ~{if defined(read_pacbio_ontd) then ("-x " +  '"' + read_pacbio_ontd + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if (apply_hla_typing) then "-H" else ""} \
      ~{if (trim_pe_resequencing) then "-a" else ""} \
      ~{if (mark_duplicate_samblaster) then "-d" else ""} \
      ~{if (bam_input_shuffle) then "-S" else ""} \
      ~{if (sort_output_alignment) then "-s" else ""} \
      ~{if (keep_temporary_files) then "-k" else ""} \
      ~{if (mark_shorter_split) then "-M" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    prefix_output_files: "prefix for output files                       [inferred from input]"
    read_group_line: "read group header line such as '@RG\\tID:foo\\tSM:bar'         [null]"
    read_pacbio_ontd: "read type: pacbio, ont2d or intractg                      [default]\\nintractg: intra-species contig (kb query, highly similar)\\npacbio:   pacbio subreads (~10kb query, high error rate)\\nont2d:    Oxford Nanopore reads (~10kb query, higher error rate)"
    number_of_threads: "number of threads                                               [1]"
    apply_hla_typing: "apply HLA typing"
    trim_pe_resequencing: "trim HiSeq2000/2500 PE resequencing adapters (via trimadap)"
    mark_duplicate_samblaster: "mark duplicate (via samblaster)"
    bam_input_shuffle: "for BAM input, don't shuffle"
    sort_output_alignment: "sort the output alignment (via samtools; requring more RAM)"
    keep_temporary_files: "keep temporary files generated by typeHLA"
    mark_shorter_split: "mark shorter split hits as secondary"
    more_options: ""
    options: ""
    idx_base: ""
    file_one: ""
    file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}