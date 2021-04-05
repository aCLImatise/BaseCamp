version 1.0

task DRAMpyAnnotateGenes {
  input {
    File? input_faa
    Directory? output_dir
    Int? bit_score_threshold
    Int? rbh_bit_score_threshold
    String? custom_db_name
    String? custom_fast_a_loc
    Boolean? use_uniref
    Boolean? low_mem_mode
    Int? keep_tmp_dir
  }
  command <<<
    DRAM_py annotate_genes \
      ~{if defined(input_faa) then ("--input_faa " +  '"' + input_faa + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(bit_score_threshold) then ("--bit_score_threshold " +  '"' + bit_score_threshold + '"') else ""} \
      ~{if defined(rbh_bit_score_threshold) then ("--rbh_bit_score_threshold " +  '"' + rbh_bit_score_threshold + '"') else ""} \
      ~{if defined(custom_db_name) then ("--custom_db_name " +  '"' + custom_db_name + '"') else ""} \
      ~{if defined(custom_fast_a_loc) then ("--custom_fasta_loc " +  '"' + custom_fast_a_loc + '"') else ""} \
      ~{if (use_uniref) then "--use_uniref" else ""} \
      ~{if (low_mem_mode) then "--low_mem_mode" else ""} \
      ~{if defined(keep_tmp_dir) then ("--keep_tmp_dir " +  '"' + keep_tmp_dir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dram:1.2.1--py_0"
  }
  parameter_meta {
    input_faa: "fasta file, optionally with wildcards to point\\ntoindividual MAGs (default: None)"
    output_dir: "output directory (default: None)"
    bit_score_threshold: "minimum bitScore of search to retain hits (default:\\n60)"
    rbh_bit_score_threshold: "minimum bitScore of reverse best hits to retain hits\\n(default: 350)"
    custom_db_name: "Names of custom databases, can be used multiple times.\\n(default: None)"
    custom_fast_a_loc: "Location of fastas to annotated against, can be used\\nmultiple times butmust match nubmer of\\ncustom_db_name's (default: None)"
    use_uniref: "Annotate these fastas against UniRef, drastically\\ndecreases run time and memory requirements (default:\\nFalse)"
    low_mem_mode: "Skip annotating with uniref and use kofam instead of\\nKEGG genes even if provided. Drastically decreases\\nmemory usage (default: False)"
    keep_tmp_dir: "number of processors to use (default: 10)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}