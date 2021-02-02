version 1.0

task RunMetasvAgepy {
  input {
    String? reference
    String? assembly
    File? age
    Directory? work
    Int? pad
    Int? n_threads
    Array[String] chrs
    Array[String] sv_types
    Int? timeout
    Boolean? keep_temp
    String? assembly_tool
    Int? min_contig_len
    Int? max_region_len
    Int? min_del_sub_align_len
    Int? min_in_v_sub_align_len
    Int? age_window
    File? bed_file_none
    String run_age_files
  }
  command <<<
    run_metasv_age_py \
      ~{run_age_files} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(age) then ("--age " +  '"' + age + '"') else ""} \
      ~{if defined(work) then ("--work " +  '"' + work + '"') else ""} \
      ~{if defined(pad) then ("--pad " +  '"' + pad + '"') else ""} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(chrs) then ("--chrs " +  '"' + chrs + '"') else ""} \
      ~{if defined(sv_types) then ("--sv_types " +  '"' + sv_types + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if (keep_temp) then "--keep_temp" else ""} \
      ~{if defined(assembly_tool) then ("--assembly_tool " +  '"' + assembly_tool + '"') else ""} \
      ~{if defined(min_contig_len) then ("--min_contig_len " +  '"' + min_contig_len + '"') else ""} \
      ~{if defined(max_region_len) then ("--max_region_len " +  '"' + max_region_len + '"') else ""} \
      ~{if defined(min_del_sub_align_len) then ("--min_del_subalign_len " +  '"' + min_del_sub_align_len + '"') else ""} \
      ~{if defined(min_in_v_sub_align_len) then ("--min_inv_subalign_len " +  '"' + min_in_v_sub_align_len + '"') else ""} \
      ~{if defined(age_window) then ("--age_window " +  '"' + age_window + '"') else ""} \
      ~{if defined(bed_file_none) then ("--intervals_bed " +  '"' + bed_file_none + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference FASTA (default: None)"
    assembly: "Assembly FASTA (default: None)"
    age: "Path to AGE executable (default: None)"
    work: "Work directory (default: work)"
    pad: "Padding to apply on both sides of the bed regions\\n(default: 500)"
    n_threads: "Number of threads to use (default: 1)"
    chrs: "Chromosome list to process (default: [])"
    sv_types: "SV types list to process (INS, DEL, INV) (default: [])"
    timeout: "Max time for assembly processes to run (default: 300)"
    keep_temp: "Don't delete temporary files (default: False)"
    assembly_tool: "Tool used for assembly (default: spades)"
    min_contig_len: "Minimum length of contig to consider (default: 200)"
    max_region_len: "Maximum length of an SV interval (default: 1000000)"
    min_del_sub_align_len: "Minimum length of deletion sub-alginment (default: 50)"
    min_in_v_sub_align_len: "Minimum length of inversion sub-alginment (default:\\n50)"
    age_window: "Window size for AGE to merge nearby breakpoints\\n(default: 20)"
    bed_file_none: "BED file for assembly (default: None)\\n"
    run_age_files: "Run AGE on files assembled under MetaSV."
  }
  output {
    File out_stdout = stdout()
  }
}