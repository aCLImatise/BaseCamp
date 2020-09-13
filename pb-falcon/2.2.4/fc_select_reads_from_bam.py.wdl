version 1.0

task FcSelectReadsFromBampy {
  input {
    File? raw_read_to_contigs
    File? raw_read_ids
    Directory? sam_dir
    Int? max_n_open_files
  }
  command <<<
    fc_select_reads_from_bam_py \
      ~{if defined(raw_read_to_contigs) then ("--rawread-to-contigs " +  '"' + raw_read_to_contigs + '"') else ""} \
      ~{if defined(raw_read_ids) then ("--rawread-ids " +  '"' + raw_read_ids + '"') else ""} \
      ~{if defined(sam_dir) then ("--sam-dir " +  '"' + sam_dir + '"') else ""} \
      ~{if defined(max_n_open_files) then ("--max-n-open-files " +  '"' + max_n_open_files + '"') else ""}
  >>>
  parameter_meta {
    raw_read_to_contigs: "rawread_to_contigs file (from where?) (default:\\n./2-asm-\\nfalcon/read_maps/dump_rawread_ids/rawread_to_contigs)"
    raw_read_ids: "rawread_ids file (from where?) (default: ./2-asm-\\nfalcon/read_maps/dump_rawread_ids/rawread_ids)"
    sam_dir: "Output directory for ctg.sam files (default:\\n./4-polish/reads)"
    max_n_open_files: "We write sam files several at-a-time, limited by this.\\n(default: 50)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_sam_dir = "${in_sam_dir}"
  }
}