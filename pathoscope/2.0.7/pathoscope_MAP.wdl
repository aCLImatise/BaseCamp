version 1.0

task PathoscopeMAP {
  input {
    String? input_read_fastq_file_unpairedsingleend
    String? one
    String? two
    String? target_ref_files
    String? filter_ref_files
    String? target_align_params
    String? filter_align_params
    String? outdir
    String? out_align
    String? index_dir
    String? target_index_prefixes
    String? filter_index_prefixes
    String? target_align_files
    String? filter_align_files
    String? bt_home
    String? num_threads
    String? exp_tag
  }
  command <<<
    pathoscope MAP \
      ~{if defined(input_read_fastq_file_unpairedsingleend) then ("-U " +  '"' + input_read_fastq_file_unpairedsingleend + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(target_ref_files) then ("-targetRefFiles " +  '"' + target_ref_files + '"') else ""} \
      ~{if defined(filter_ref_files) then ("-filterRefFiles " +  '"' + filter_ref_files + '"') else ""} \
      ~{if defined(target_align_params) then ("-targetAlignParams " +  '"' + target_align_params + '"') else ""} \
      ~{if defined(filter_align_params) then ("-filterAlignParams " +  '"' + filter_align_params + '"') else ""} \
      ~{if defined(outdir) then ("-outDir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_align) then ("-outAlign " +  '"' + out_align + '"') else ""} \
      ~{if defined(index_dir) then ("-indexDir " +  '"' + index_dir + '"') else ""} \
      ~{if defined(target_index_prefixes) then ("-targetIndexPrefixes " +  '"' + target_index_prefixes + '"') else ""} \
      ~{if defined(filter_index_prefixes) then ("-filterIndexPrefixes " +  '"' + filter_index_prefixes + '"') else ""} \
      ~{if defined(target_align_files) then ("-targetAlignFiles " +  '"' + target_align_files + '"') else ""} \
      ~{if defined(filter_align_files) then ("-filterAlignFiles " +  '"' + filter_align_files + '"') else ""} \
      ~{if defined(bt_home) then ("-btHome " +  '"' + bt_home + '"') else ""} \
      ~{if defined(num_threads) then ("-numThreads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(exp_tag) then ("-expTag " +  '"' + exp_tag + '"') else ""}
  >>>
  parameter_meta {
    input_read_fastq_file_unpairedsingleend: "Input Read Fastq File (Unpaired/Single-end)"
    one: "Input Read Fastq File (Pair 1)"
    two: "Input Read Fastq File (Pair 2)"
    target_ref_files: "Target Reference Genome Fasta Files Full Path (Comma Separated)"
    filter_ref_files: "Filter Reference Genome Fasta Files Full Path (Comma Separated)"
    target_align_params: "Target Mapping Bowtie2 Parameters (Default: Pathoscope chosen best parameters)"
    filter_align_params: "Filter Mapping Bowtie2 Parameters (Default: Use the same Target Mapping Bowtie2 parameters)"
    outdir: "Output Directory (Default=. (current directory))"
    out_align: "Output Alignment File Name (Default=outalign.sam)"
    index_dir: "Index Directory (Default=. (current directory))"
    target_index_prefixes: "Target Index Prefixes (Comma Separated)"
    filter_index_prefixes: "Filter Index Prefixes (Comma Separated)"
    target_align_files: "Target Alignment Files Full Path (Comma Separated)"
    filter_align_files: "Filter Alignment Files Full Path (Comma Separated)"
    bt_home: "Full Path to Bowtie2 binary directory (Default: Uses bowtie2 in system path)"
    num_threads: "Number of threads to use by aligner (bowtie2) if different from default (8)"
    exp_tag: "Experiment Tag added to files generated for identification (Default: pathomap)"
  }
}