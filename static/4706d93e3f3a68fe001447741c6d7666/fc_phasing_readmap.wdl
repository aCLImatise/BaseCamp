version 1.0

task FcPhasingReadmap.py {
  input {
    String? phased_reads
    String? raw_read_ids_fn
    String? p_read_ids_fn
    String? p_read_to_contigs_fn
    String? the_ctg_id
  }
  command <<<
    fc_phasing_readmap.py \
      ~{if defined(phased_reads) then ("--phased-reads " +  '"' + phased_reads + '"') else ""} \
      ~{if defined(raw_read_ids_fn) then ("--rawread-ids-fn " +  '"' + raw_read_ids_fn + '"') else ""} \
      ~{if defined(p_read_ids_fn) then ("--pread-ids-fn " +  '"' + p_read_ids_fn + '"') else ""} \
      ~{if defined(p_read_to_contigs_fn) then ("--pread-to-contigs-fn " +  '"' + p_read_to_contigs_fn + '"') else ""} \
      ~{if defined(the_ctg_id) then ("--the-ctg-id " +  '"' + the_ctg_id + '"') else ""}
  >>>
  parameter_meta {
    phased_reads: "path to read vs. phase map (default: None)"
    raw_read_ids_fn: "Input. Typically 3-unzip/reads/dump_rawread_ids/rawreads_ids (default: None)"
    p_read_ids_fn: "Input. Typically 3-unzip/reads/dump_rawread_ids/rawreads_ids (default: None)"
    p_read_to_contigs_fn: "Input. Typically 3-unzip/reads/pread_to_contigs (default: None)"
    the_ctg_id: "contig identifier in the bam file (default: None)"
  }
}