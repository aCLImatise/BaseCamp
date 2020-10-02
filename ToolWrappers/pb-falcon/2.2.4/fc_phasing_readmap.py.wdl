version 1.0

task FcPhasingReadmappy {
  input {
    String? p_read_to_contigs_fn
    File? phased_reads
    Int? raw_read_ids_fn
    Int? p_read_ids_fn
    File? the_ctg_id
  }
  command <<<
    fc_phasing_readmap_py \
      ~{if defined(p_read_to_contigs_fn) then ("--pread-to-contigs-fn " +  '"' + p_read_to_contigs_fn + '"') else ""} \
      ~{if defined(phased_reads) then ("--phased-reads " +  '"' + phased_reads + '"') else ""} \
      ~{if defined(raw_read_ids_fn) then ("--rawread-ids-fn " +  '"' + raw_read_ids_fn + '"') else ""} \
      ~{if defined(p_read_ids_fn) then ("--pread-ids-fn " +  '"' + p_read_ids_fn + '"') else ""} \
      ~{if defined(the_ctg_id) then ("--the-ctg-id " +  '"' + the_ctg_id + '"') else ""}
  >>>
  parameter_meta {
    p_read_to_contigs_fn: "--the-ctg-id THE_CTG_ID"
    phased_reads: "path to read vs. phase map (default: None)"
    raw_read_ids_fn: "Input. Typically\\n3-unzip/reads/dump_rawread_ids/rawreads_ids (default:\\nNone)"
    p_read_ids_fn: "Input. Typically\\n3-unzip/reads/dump_rawread_ids/rawreads_ids (default:\\nNone)"
    the_ctg_id: "contig identifier in the bam file (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}