version 1.0

task FcGetReadHctgMap.py {
  input {
    String? base_dir
    String? raw_read_ids_fn
    String? p_read_ids_fn
    String? p_ctg_edges_fn
    String? h_ctg_edges_fn
    String? h_ctg_ids_fn
    String? output_fn
  }
  command <<<
    fc_get_read_hctg_map.py \
      ~{if defined(base_dir) then ("--base-dir " +  '"' + base_dir + '"') else ""} \
      ~{if defined(raw_read_ids_fn) then ("--rawread-ids-fn " +  '"' + raw_read_ids_fn + '"') else ""} \
      ~{if defined(p_read_ids_fn) then ("--pread-ids-fn " +  '"' + p_read_ids_fn + '"') else ""} \
      ~{if defined(p_ctg_edges_fn) then ("--p-ctg-edges-fn " +  '"' + p_ctg_edges_fn + '"') else ""} \
      ~{if defined(h_ctg_edges_fn) then ("--h-ctg-edges-fn " +  '"' + h_ctg_edges_fn + '"') else ""} \
      ~{if defined(h_ctg_ids_fn) then ("--h-ctg-ids-fn " +  '"' + h_ctg_ids_fn + '"') else ""} \
      ~{if defined(output_fn) then ("--output-fn " +  '"' + output_fn + '"') else ""}
  >>>
  parameter_meta {
    base_dir: "Substituted as {base_dir} into default inputs. (default: .)"
    raw_read_ids_fn: "rawread_ids filename (default: {base_dir}/3-unzip/reads/dump_rawread_ids/rawread_ids)"
    p_read_ids_fn: "pread ids filename (default: {base_dir}/3-unzip/reads/dump_pread_ids/pread_ids)"
    p_ctg_edges_fn: "primary contig edges filename (default: {base_dir}/3-unzip/all_p_ctg_edges)"
    h_ctg_edges_fn: "haplotype contig edges filename (default: {base_dir}/3-unzip/all_h_ctg_edges)"
    h_ctg_ids_fn: "haplotype contig ids filename (default: {base_dir}/3-unzip/all_h_ctg_ids)"
    output_fn: "output read_to_contig_map filename (default: {base_dir}/4-polish/read_maps/read_to_contig_map)"
  }
}