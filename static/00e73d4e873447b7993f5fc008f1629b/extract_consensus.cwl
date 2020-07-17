class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/extract_consensus.cwl
inputs:
- id: fasta_file_containing
  doc: 'Fasta file containing the reference sequence (default: None)'
  type: string
  inputBinding:
    prefix: -f
- id: region_interested_bed
  doc: 'Region of interested in BED format, e.g. HXB2:2253-3869. Loci are interpreted
    using 0-based indexing, and a half-open interval is used, i.e, [start:end) (default:
    None)'
  type: string
  inputBinding:
    prefix: -r
- id: minimum_read_depth
  doc: 'Minimum read depth for reporting variants per locus (default: 50)'
  type: long
  inputBinding:
    prefix: -c
- id: minimum_phred_quality
  doc: 'Minimum phred quality score a base has to reach to be counted (default: 15)'
  type: long
  inputBinding:
    prefix: -q
- id: minimum_frequency_ambiguous
  doc: 'Minimum frequency for an ambiguous nucleotide (default: 0.05)'
  type: double
  inputBinding:
    prefix: -a
- id: read_count_reported
  doc: "Read count below which ambiguous base 'n' is reported (default: None)"
  type: long
  inputBinding:
    prefix: -n
- id: patientsample_identifier_default
  doc: 'Patient/sample identifier (default: CONSENSUS)'
  type: string
  inputBinding:
    prefix: -N
- id: output_directory_default
  doc: 'Output directory (default: /tmp/tmp0coinnkt)'
  type: File
  inputBinding:
    prefix: -o
- id: input_bam_file
  doc: 'Input BAM file (default: None)'
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_consensus
