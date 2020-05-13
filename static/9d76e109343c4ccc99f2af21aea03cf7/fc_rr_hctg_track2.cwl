class: CommandLineTool
id: fc_rr_hctg_track2.py.cwl
inputs:
- id: n_core
  doc: 'number of processes used for for tracking reads; 0 for main process only (default:
    4)'
  type: string
  inputBinding:
    prefix: --n-core
- id: base_dir
  doc: 'Substituted as {base_dir} into default inputs. (default: .)'
  type: string
  inputBinding:
    prefix: --base-dir
- id: db_fn
  doc: 'Input. Filename of Dazzler DB (default: {base_dir}/0-rawreads/build/raw_reads.db)'
  type: string
  inputBinding:
    prefix: --db-fn
- id: las_fof_n_fn
  doc: 'Inputs. Filename of las filenames, to be processed in parallel. Paths are
    relative to location of file. (default: {base_dir}/0-rawreads/las-merge- combine/las_fofn.json)'
  type: string
  inputBinding:
    prefix: --las-fofn-fn
- id: phased_reads_fn
  doc: 'phased-read-file (accumulated from many fc_graphs_to_h_tigs.py calls) (default:
    {base_dir}/3-unzip/all_phased_reads)'
  type: string
  inputBinding:
    prefix: --phased-reads-fn
- id: read_to_contig_map_fn
  doc: 'read_to_contig_map, from fc_get_read_hctg_map (default: ./read_to_contig_map)'
  type: string
  inputBinding:
    prefix: --read-to-contig-map-fn
- id: raw_read_ids_fn
  doc: 'rawread_ids file (from a task within fc_get_read_ctg_map.py) (default: {base_dir}/3-unzip/reads/dump_rawread_ids/rawread_ids)'
  type: string
  inputBinding:
    prefix: --rawread-ids-fn
- id: output
  doc: 'Output of stage2 (now replaced by rr_hctg_track2.nim) (default: {base_dir}/rawread_to_contigs)'
  type: string
  inputBinding:
    prefix: --output
- id: partials_fn
  doc: 'Output of stage1, consumed by stage2. This is a list of the (msgpack) partials.
    (default: ./partials.json)'
  type: string
  inputBinding:
    prefix: --partials-fn
- id: min_len
  doc: 'min length of the reads (default: 2500)'
  type: long
  inputBinding:
    prefix: --min-len
- id: stream
  doc: 'stream from LA4Falcon, instead of slurping all at once; can save memory for
    large data (default: False)'
  type: boolean
  inputBinding:
    prefix: --stream
- id: debug
  doc: 'single-threaded, plus other aids to debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: silent
  doc: 'suppress cmd reporting on stderr (default: False)'
  type: boolean
  inputBinding:
    prefix: --silent
- id: best_n
  doc: 'keep best n hits (default: 30)'
  type: string
  inputBinding:
    prefix: --bestn
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_rr_hctg_track2.py
