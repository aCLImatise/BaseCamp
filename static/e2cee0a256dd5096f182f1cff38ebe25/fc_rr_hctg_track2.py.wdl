version 1.0

task FcRrHctgTrack2py {
  input {
    Int? n_core
    String? base_dir
    File? db_fn
    File? las_fof_n_fn
    File? phased_reads_fn
    String? read_to_contig_map_fn
    File? raw_read_ids_fn
    Int? output_now_replaced
    Int? partials_fn
    Int? min_len
    Boolean? stream
    Boolean? debug
    Boolean? silent
    Int? best_n
  }
  command <<<
    fc_rr_hctg_track2_py \
      ~{if defined(n_core) then ("--n-core " +  '"' + n_core + '"') else ""} \
      ~{if defined(base_dir) then ("--base-dir " +  '"' + base_dir + '"') else ""} \
      ~{if defined(db_fn) then ("--db-fn " +  '"' + db_fn + '"') else ""} \
      ~{if defined(las_fof_n_fn) then ("--las-fofn-fn " +  '"' + las_fof_n_fn + '"') else ""} \
      ~{if defined(phased_reads_fn) then ("--phased-reads-fn " +  '"' + phased_reads_fn + '"') else ""} \
      ~{if defined(read_to_contig_map_fn) then ("--read-to-contig-map-fn " +  '"' + read_to_contig_map_fn + '"') else ""} \
      ~{if defined(raw_read_ids_fn) then ("--rawread-ids-fn " +  '"' + raw_read_ids_fn + '"') else ""} \
      ~{if defined(output_now_replaced) then ("--output " +  '"' + output_now_replaced + '"') else ""} \
      ~{if defined(partials_fn) then ("--partials-fn " +  '"' + partials_fn + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if (stream) then "--stream" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if defined(best_n) then ("--bestn " +  '"' + best_n + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    n_core: "number of processes used for for tracking reads; 0 for\\nmain process only (default: 4)"
    base_dir: "Substituted as {base_dir} into default inputs.\\n(default: .)"
    db_fn: "Input. Filename of Dazzler DB (default:\\n{base_dir}/0-rawreads/build/raw_reads.db)"
    las_fof_n_fn: "Inputs. Filename of las filenames, to be processed in\\nparallel. Paths are relative to location of file.\\n(default: {base_dir}/0-rawreads/las-merge-\\ncombine/las_fofn.json)"
    phased_reads_fn: "phased-read-file (accumulated from many\\nfc_graphs_to_h_tigs.py calls) (default:\\n{base_dir}/3-unzip/all_phased_reads)"
    read_to_contig_map_fn: "read_to_contig_map, from fc_get_read_hctg_map\\n(default: ./read_to_contig_map)"
    raw_read_ids_fn: "rawread_ids file (from a task within\\nfc_get_read_ctg_map.py) (default:\\n{base_dir}/3-unzip/reads/dump_rawread_ids/rawread_ids)"
    output_now_replaced: "Output of stage2 (now replaced by rr_hctg_track2.nim)\\n(default: {base_dir}/rawread_to_contigs)"
    partials_fn: "Output of stage1, consumed by stage2. This is a list\\nof the (msgpack) partials. (default: ./partials.json)"
    min_len: "min length of the reads (default: 2500)"
    stream: "stream from LA4Falcon, instead of slurping all at\\nonce; can save memory for large data (default: False)"
    debug: "single-threaded, plus other aids to debugging\\n(default: False)"
    silent: "suppress cmd reporting on stderr (default: False)"
    best_n: "keep best n hits (default: 30)"
  }
  output {
    File out_stdout = stdout()
  }
}