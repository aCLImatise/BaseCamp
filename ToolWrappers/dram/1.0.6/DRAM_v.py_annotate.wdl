version 1.0

task DRAMvpyAnnotate {
  input {
    File? input_fast_a
    File? vir_sorter_affi_contigs
    Directory? output_dir
    Int? min_contig_size
    Int? bit_score_threshold
    Int? rbh_bit_score_threshold
    String? custom_db_name
    String? custom_fast_a_loc
    Boolean? use_uniref
    Boolean? low_mem_mode
    Boolean? skip_trnascan
    Boolean? keep_tmp_dir
    Int? threads
    Boolean? verbose
  }
  command <<<
    DRAM_v_py annotate \
      ~{if defined(input_fast_a) then ("--input_fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(vir_sorter_affi_contigs) then ("--virsorter_affi_contigs " +  '"' + vir_sorter_affi_contigs + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(min_contig_size) then ("--min_contig_size " +  '"' + min_contig_size + '"') else ""} \
      ~{if defined(bit_score_threshold) then ("--bit_score_threshold " +  '"' + bit_score_threshold + '"') else ""} \
      ~{if defined(rbh_bit_score_threshold) then ("--rbh_bit_score_threshold " +  '"' + rbh_bit_score_threshold + '"') else ""} \
      ~{if defined(custom_db_name) then ("--custom_db_name " +  '"' + custom_db_name + '"') else ""} \
      ~{if defined(custom_fast_a_loc) then ("--custom_fasta_loc " +  '"' + custom_fast_a_loc + '"') else ""} \
      ~{if (use_uniref) then "--use_uniref" else ""} \
      ~{if (low_mem_mode) then "--low_mem_mode" else ""} \
      ~{if (skip_trnascan) then "--skip_trnascan" else ""} \
      ~{if (keep_tmp_dir) then "--keep_tmp_dir" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    input_fast_a: "fasta file, output from (default: None)"
    vir_sorter_affi_contigs: "VirSorter VIRSorter_affi-contigs.tab output file\\n(default: None)"
    output_dir: "output directory (default: None)"
    min_contig_size: "minimum contig size to be used for gene prediction\\n(default: 2500)"
    bit_score_threshold: "minimum bitScore of search to retain hits (default:\\n60)"
    rbh_bit_score_threshold: "minimum bitScore of reverse best hits to retain hits\\n(default: 350)"
    custom_db_name: "Names of custom databases, can be usedmultiple times.\\n(default: None)"
    custom_fast_a_loc: "Location of fastas to annotated against, can be used\\nmultiple times butmust match nubmer of\\ncustom_db_name's (default: None)"
    use_uniref: "Annotate these fastas against UniRef, drastically\\ndecreases run time and memory requirements (default:\\nFalse)"
    low_mem_mode: "Skip annotating with uniref and use kofam instead of\\nKEGG genes even if provided. Drastically decreases\\nmemory usage (default: False)"
    skip_trnascan: ""
    keep_tmp_dir: ""
    threads: "number of processors to use (default: 10)"
    verbose: ""
  }
  output {
    File out_stdout = stdout()
    File out_input_fast_a = "${in_input_fast_a}"
    File out_vir_sorter_affi_contigs = "${in_vir_sorter_affi_contigs}"
    Directory out_output_dir = "${in_output_dir}"
  }
}