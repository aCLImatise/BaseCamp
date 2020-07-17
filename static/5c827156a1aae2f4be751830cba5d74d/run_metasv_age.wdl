version 1.0

task RunMetasvAge.py {
  input {
    String? reference
    String? assembly
    String? age
    String? work
    String? pad
    String? n_threads
    Array[String] chrs
    Array[String] sv_types
    String? timeout
    Boolean? keep_temp
    String? assembly_tool
    Int? min_contig_len
    Int? max_region_len
    Int? min_del_sub_align_len
    Int? min_in_v_sub_align_len
    String? age_window
    Int? intervals_bed
  }
  command <<<
    run_metasv_age.py \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(age) then ("--age " +  '"' + age + '"') else ""} \
      ~{if defined(work) then ("--work " +  '"' + work + '"') else ""} \
      ~{if defined(pad) then ("--pad " +  '"' + pad + '"') else ""} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(chrs) then ("--chrs " +  '"' + chrs + '"') else ""} \
      ~{if defined(sv_types) then ("--sv_types " +  '"' + sv_types + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{true="--keep_temp" false="" keep_temp} \
      ~{if defined(assembly_tool) then ("--assembly_tool " +  '"' + assembly_tool + '"') else ""} \
      ~{if defined(min_contig_len) then ("--min_contig_len " +  '"' + min_contig_len + '"') else ""} \
      ~{if defined(max_region_len) then ("--max_region_len " +  '"' + max_region_len + '"') else ""} \
      ~{if defined(min_del_sub_align_len) then ("--min_del_subalign_len " +  '"' + min_del_sub_align_len + '"') else ""} \
      ~{if defined(min_in_v_sub_align_len) then ("--min_inv_subalign_len " +  '"' + min_in_v_sub_align_len + '"') else ""} \
      ~{if defined(age_window) then ("--age_window " +  '"' + age_window + '"') else ""} \
      ~{if defined(intervals_bed) then ("--intervals_bed " +  '"' + intervals_bed + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference FASTA (default: None)"
    assembly: "Assembly FASTA (default: None)"
    age: "Path to AGE executable (default: None)"
    work: "Work directory (default: work)"
    pad: "Padding to apply on both sides of the bed regions (default: 500)"
    n_threads: "Number of threads to use (default: 1)"
    chrs: "Chromosome list to process (default: [])"
    sv_types: "SV types list to process (INS, DEL, INV) (default: [])"
    timeout: "Max time for assembly processes to run (default: 300)"
    keep_temp: "Don't delete temporary files (default: False)"
    assembly_tool: "Tool used for assembly (default: spades)"
    min_contig_len: "Minimum length of contig to consider (default: 200)"
    max_region_len: "Maximum length of an SV interval (default: 1000000)"
    min_del_sub_align_len: "Minimum length of deletion sub-alginment (default: 50)"
    min_in_v_sub_align_len: "Minimum length of inversion sub-alginment (default: 50)"
    age_window: "Window size for AGE to merge nearby breakpoints (default: 20)"
    intervals_bed: "BED file for assembly (default: None)"
  }
}