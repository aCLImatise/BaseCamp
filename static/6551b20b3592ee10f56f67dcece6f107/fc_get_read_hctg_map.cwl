class: CommandLineTool
id: fc_get_read_hctg_map.py.cwl
inputs:
- id: base_dir
  doc: 'Substituted as {base_dir} into default inputs. (default: .)'
  type: string
  inputBinding:
    prefix: --base-dir
- id: raw_read_ids_fn
  doc: 'rawread_ids filename (default: {base_dir}/3-unzip/reads/dump_rawread_ids/rawread_ids)'
  type: string
  inputBinding:
    prefix: --rawread-ids-fn
- id: p_read_ids_fn
  doc: 'pread ids filename (default: {base_dir}/3-unzip/reads/dump_pread_ids/pread_ids)'
  type: string
  inputBinding:
    prefix: --pread-ids-fn
- id: p_ctg_edges_fn
  doc: 'primary contig edges filename (default: {base_dir}/3-unzip/all_p_ctg_edges)'
  type: string
  inputBinding:
    prefix: --p-ctg-edges-fn
- id: h_ctg_edges_fn
  doc: 'haplotype contig edges filename (default: {base_dir}/3-unzip/all_h_ctg_edges)'
  type: string
  inputBinding:
    prefix: --h-ctg-edges-fn
- id: h_ctg_ids_fn
  doc: 'haplotype contig ids filename (default: {base_dir}/3-unzip/all_h_ctg_ids)'
  type: string
  inputBinding:
    prefix: --h-ctg-ids-fn
- id: output_fn
  doc: 'output read_to_contig_map filename (default: {base_dir}/4-polish/read_maps/read_to_contig_map)'
  type: string
  inputBinding:
    prefix: --output-fn
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_get_read_hctg_map.py
