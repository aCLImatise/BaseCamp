class: CommandLineTool
id: hp_assemble_amplicons.cwl
inputs:
- id: in_ref_gtf
  doc: '[--outdir OUTDIR]'
  type: string?
  inputBinding:
    prefix: --ref_gtf
- id: in_contigs_fa
  doc: Fasta file with assembled contigs
  type: File?
  inputBinding:
    prefix: --contigs_fa
- id: in_ref_fa
  doc: Fasta file with reference genome to scaffold against
  type: File?
  inputBinding:
    prefix: --ref_fa
- id: in_outdir
  doc: 'Output directory (default: .)'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_sample_id
  doc: 'Sample ID. (default: sampleXX)'
  type: string?
  inputBinding:
    prefix: --sample_id
- id: in_padding
  doc: "Bases to include outside reference annotation.\n(default: 50)"
  type: long?
  inputBinding:
    prefix: --padding
- id: in_min_contig_len
  doc: 'Minimum contig length for tiling path (default: 200)'
  type: long?
  inputBinding:
    prefix: --min_contig_len
- id: in_keep_tmp
  doc: 'Additional options (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep_tmp
- id: in_quiet
  doc: "Do not write output to console (silence stdout and\nstderr) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_log_file
  doc: Append console output to this file
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Output directory (default: .)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_log_file
  doc: Append console output to this file
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints: []
cwlVersion: v1.1
baseCommand:
- hp_assemble_amplicons
