class: CommandLineTool
id: fc_rr_hctg_track.py.cwl
inputs:
- id: in_n_core
  doc: "number of processes used for for tracking reads; 0 for\nmain process only\
    \ (default: 4)"
  type: long
  inputBinding:
    prefix: --n-core
- id: in_base_dir
  doc: "Substituted as {base_dir} into default inputs.\n(default: .)"
  type: string
  inputBinding:
    prefix: --base-dir
- id: in_db_fn
  doc: "Input. Filename of Dazzler DB (default:\n{base_dir}/0-rawreads/build/raw_reads.db)"
  type: File
  inputBinding:
    prefix: --db-fn
- id: in_las_fof_n_fn
  doc: "Inputs. Filename of las filenames, to be processed in\nparallel. Paths are\
    \ relative to location of file.\n(default: {base_dir}/0-rawreads/las-merge-\n\
    combine/las_fofn.json)"
  type: File
  inputBinding:
    prefix: --las-fofn-fn
- id: in_phased_reads_fn
  doc: "phased-read-file (accumulated from many\nfc_graphs_to_h_tigs.py calls) (default:\n\
    {base_dir}/3-unzip/all_phased_reads)"
  type: File
  inputBinding:
    prefix: --phased-reads-fn
- id: in_read_to_contig_map_fn
  doc: "read_to_contig_map, from fc_get_read_hctg_map\n(default: ./read_to_contig_map)"
  type: string
  inputBinding:
    prefix: --read-to-contig-map-fn
- id: in_raw_read_ids_fn
  doc: "rawread_ids file (from a task within\nfc_get_read_ctg_map.py) (default:\n\
    {base_dir}/3-unzip/reads/dump_rawread_ids/rawread_ids)"
  type: File
  inputBinding:
    prefix: --rawread-ids-fn
- id: in_output
  doc: "Output of stage2 (now replaced by rr_hctg_track2.nim)\n(default: {base_dir}/rawread_to_contigs)"
  type: long
  inputBinding:
    prefix: --output
- id: in_partials_fn
  doc: "Output of stage1, consumed by stage2. This is a list\nof the (msgpack) partials.\
    \ (default: ./partials.json)"
  type: long
  inputBinding:
    prefix: --partials-fn
- id: in_min_len
  doc: 'min length of the reads (default: 2500)'
  type: long
  inputBinding:
    prefix: --min-len
- id: in_stream
  doc: "stream from LA4Falcon, instead of slurping all at\nonce; can save memory for\
    \ large data (default: False)"
  type: boolean
  inputBinding:
    prefix: --stream
- id: in_debug
  doc: "single-threaded, plus other aids to debugging\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_silent
  doc: 'suppress cmd reporting on stderr (default: False)'
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_best_n
  doc: 'keep best n hits (default: 30)'
  type: long
  inputBinding:
    prefix: --bestn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fc_rr_hctg_track.py
