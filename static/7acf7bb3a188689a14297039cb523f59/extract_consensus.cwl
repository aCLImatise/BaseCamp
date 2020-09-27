class: CommandLineTool
id: extract_consensus.cwl
inputs:
- id: in_fasta_file_containing
  doc: 'Fasta file containing the reference sequence (default: None)'
  type: File
  inputBinding:
    prefix: -f
- id: in_region_interested_bed
  doc: "Region of interested in BED format, e.g. HXB2:2253-3869. Loci\nare interpreted\
    \ using 0-based indexing, and a half-open interval\nis used, i.e, [start:end)\
    \ (default: None)"
  type: long
  inputBinding:
    prefix: -r
- id: in_minimum_read_depth
  doc: "Minimum read depth for reporting variants per locus (default:\n50)"
  type: long
  inputBinding:
    prefix: -c
- id: in_minimum_phred_quality
  doc: "Minimum phred quality score a base has to reach to be counted\n(default: 15)"
  type: long
  inputBinding:
    prefix: -q
- id: in_minimum_frequency_ambiguous
  doc: 'Minimum frequency for an ambiguous nucleotide (default: 0.05)'
  type: double
  inputBinding:
    prefix: -a
- id: in_read_count_reported
  doc: "Read count below which ambiguous base 'n' is reported (default:\nNone)"
  type: long
  inputBinding:
    prefix: -n
- id: in_patientsample_identifier_default
  doc: 'Patient/sample identifier (default: CONSENSUS)'
  type: string
  inputBinding:
    prefix: -N
- id: in_output_directory_default
  doc: 'Output directory (default: /)'
  type: Directory
  inputBinding:
    prefix: -o
- id: in_input_bam_file
  doc: 'Input BAM file (default: None)'
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_default
  doc: 'Output directory (default: /)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory_default)
cwlVersion: v1.1
baseCommand:
- extract_consensus
