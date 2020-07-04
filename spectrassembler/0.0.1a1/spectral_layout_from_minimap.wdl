version 1.0

task SpectralLayoutFromMinimap.py {
  input {
    String? root
    String? fast_afn
    Int? minimap_fn
    Boolean? write_poa_files
    String? w_len
    String? w_ovl_len
    String? sim_thr
    String? len_thr
    Boolean? verbosity
    String? ref_pos_csv_f
  }
  command <<<
    spectral_layout_from_minimap.py \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if defined(fast_afn) then ("--fastafn " +  '"' + fast_afn + '"') else ""} \
      ~{if defined(minimap_fn) then ("--minimapfn " +  '"' + minimap_fn + '"') else ""} \
      ~{true="--write_poa_files" false="" write_poa_files} \
      ~{if defined(w_len) then ("--w_len " +  '"' + w_len + '"') else ""} \
      ~{if defined(w_ovl_len) then ("--w_ovl_len " +  '"' + w_ovl_len + '"') else ""} \
      ~{if defined(sim_thr) then ("--sim_thr " +  '"' + sim_thr + '"') else ""} \
      ~{if defined(len_thr) then ("--len_thr " +  '"' + len_thr + '"') else ""} \
      ~{true="--verbosity" false="" verbosity} \
      ~{if defined(ref_pos_csv_f) then ("--ref_pos_csvf " +  '"' + ref_pos_csv_f + '"') else ""}
  >>>
  parameter_meta {
    root: "directory where to store layout files."
    fast_afn: "reads file path (fasta format))"
    minimap_fn: "overlap file path (from minimap in PAF format)."
    write_poa_files: "Whether to write POA input files for consensus generation or not."
    w_len: "length of consensus windows for POA."
    w_ovl_len: "overlap length between two successive consensus windows."
    sim_thr: "threshold on overlap score (similarity matrix preprocessing.)"
    len_thr: "threshold on length of overlaps (similarity matrix preprocessing)."
    verbosity: "verbosity level (-v, -vv or none)"
    ref_pos_csv_f: "csv file with position of reads (in same order as in fastafn) obtained from BWA, in order to plot reads position found vs reference."
  }
}