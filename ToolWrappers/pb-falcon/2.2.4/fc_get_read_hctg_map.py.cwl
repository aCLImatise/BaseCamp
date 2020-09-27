class: CommandLineTool
id: fc_get_read_hctg_map.py.cwl
inputs:
- id: in_base_dir
  doc: "Substituted as {base_dir} into default inputs.\n(default: .)"
  type: string
  inputBinding:
    prefix: --base-dir
- id: in_raw_read_ids_fn
  doc: "rawread_ids filename (default:\n{base_dir}/3-unzip/reads/dump_rawread_ids/rawread_ids)"
  type: File
  inputBinding:
    prefix: --rawread-ids-fn
- id: in_p_read_ids_fn
  doc: "pread ids filename (default:\n{base_dir}/3-unzip/reads/dump_pread_ids/pread_ids)"
  type: File
  inputBinding:
    prefix: --pread-ids-fn
- id: in_p_ctg_edges_fn
  doc: "primary contig edges filename (default:\n{base_dir}/3-unzip/all_p_ctg_edges)"
  type: File
  inputBinding:
    prefix: --p-ctg-edges-fn
- id: in_h_ctg_edges_fn
  doc: "haplotype contig edges filename (default:\n{base_dir}/3-unzip/all_h_ctg_edges)"
  type: File
  inputBinding:
    prefix: --h-ctg-edges-fn
- id: in_h_ctg_ids_fn
  doc: "haplotype contig ids filename (default:\n{base_dir}/3-unzip/all_h_ctg_ids)"
  type: File
  inputBinding:
    prefix: --h-ctg-ids-fn
- id: in_output_fn
  doc: "output read_to_contig_map filename (default:\n{base_dir}/4-polish/read_maps/read_to_contig_map)\n"
  type: File
  inputBinding:
    prefix: --output-fn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fn
  doc: "output read_to_contig_map filename (default:\n{base_dir}/4-polish/read_maps/read_to_contig_map)\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_fn)
cwlVersion: v1.1
baseCommand:
- fc_get_read_hctg_map.py
