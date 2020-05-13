class: CommandLineTool
id: hp_assemble_amplicons.cwl
inputs:
- id: contigs_fa
  doc: Fasta file with assembled contigs
  type: string
  inputBinding:
    prefix: --contigs_fa
- id: ref_fa
  doc: Fasta file with reference genome to scaffold against
  type: string
  inputBinding:
    prefix: --ref_fa
- id: ref_gtf
  doc: GTF format file containing amplicon regions
  type: string
  inputBinding:
    prefix: --ref_gtf
- id: outdir
  doc: 'Output directory (default: .)'
  type: string
  inputBinding:
    prefix: --outdir
- id: sample_id
  doc: 'Sample ID. (default: sampleXX)'
  type: string
  inputBinding:
    prefix: --sample_id
- id: padding
  doc: 'Bases to include outside reference annotation. (default: 50)'
  type: string
  inputBinding:
    prefix: --padding
- id: min_contig_len
  doc: 'Minimum contig length for tiling path (default: 200)'
  type: long
  inputBinding:
    prefix: --min_contig_len
- id: keep_tmp
  doc: 'Additional options (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_tmp
- id: quiet
  doc: 'Do not write output to console (silence stdout and stderr) (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: log_file
  doc: Append console output to this file
  type: string
  inputBinding:
    prefix: --logfile
- id: debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- hp_assemble_amplicons
