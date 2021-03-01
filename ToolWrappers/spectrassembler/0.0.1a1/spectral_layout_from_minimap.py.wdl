version 1.0

task SpectralLayoutFromMinimappy {
  input {
    Directory? root
    File? fast_afn
    File? minimap_fn
    Boolean? write_poa_files
    Int? w_len
    Int? w_ovl_len
    String? sim_thr
    Int? len_thr
    Boolean? verbosity
    File? ref_pos_csv_f
  }
  command <<<
    spectral_layout_from_minimap_py \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if defined(fast_afn) then ("--fastafn " +  '"' + fast_afn + '"') else ""} \
      ~{if defined(minimap_fn) then ("--minimapfn " +  '"' + minimap_fn + '"') else ""} \
      ~{if (write_poa_files) then "--write_poa_files" else ""} \
      ~{if defined(w_len) then ("--w_len " +  '"' + w_len + '"') else ""} \
      ~{if defined(w_ovl_len) then ("--w_ovl_len " +  '"' + w_ovl_len + '"') else ""} \
      ~{if defined(sim_thr) then ("--sim_thr " +  '"' + sim_thr + '"') else ""} \
      ~{if defined(len_thr) then ("--len_thr " +  '"' + len_thr + '"') else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if defined(ref_pos_csv_f) then ("--ref_pos_csvf " +  '"' + ref_pos_csv_f + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    root: "directory where to store layout files."
    fast_afn: "reads file path (fasta format))"
    minimap_fn: "overlap file path (from minimap in PAF format)."
    write_poa_files: "Whether to write POA input files for consensus\\ngeneration or not."
    w_len: "length of consensus windows for POA."
    w_ovl_len: "overlap length between two successive consensus\\nwindows."
    sim_thr: "threshold on overlap score (similarity matrix\\npreprocessing.)"
    len_thr: "threshold on length of overlaps (similarity matrix\\npreprocessing)."
    verbosity: "verbosity level (-v, -vv or none)"
    ref_pos_csv_f: "csv file with position of reads (in same order as in\\nfastafn) obtained from BWA, in order to plot reads\\nposition found vs reference.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}