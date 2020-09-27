class: CommandLineTool
id: battenberg_CN_to_VCF.pl.cwl
inputs:
- id: in_sample_bam_mut
  doc: -sbm  Mutant sample bam file.
  type: boolean
  inputBinding:
    prefix: -sample-bam-mut
- id: in_sample_bam_norm
  doc: -sbw  Normal sample bam file.
  type: boolean
  inputBinding:
    prefix: -sample-bam-norm
- id: in_reference
  doc: -r    Reference file
  type: boolean
  inputBinding:
    prefix: -reference
- id: in_sample_sequencing_protocol_mut
  doc: Sample Sequencing Protocol.
  type: boolean
  inputBinding:
    prefix: -sample-sequencing-protocol-mut
- id: in_sample_sequencing_protocol_norm
  doc: Sample Sequencing Protocol.
  type: boolean
  inputBinding:
    prefix: -sample-sequencing-protocol-norm
- id: in_in_file
  doc: -i    Input file. [STDIN]
  type: boolean
  inputBinding:
    prefix: -in-file
- id: in_out_file
  doc: -o    Output file [STDOUT].
  type: File
  inputBinding:
    prefix: -out-file
- id: in_reference_species
  doc: -rs   Reference species [BAM HEADER].
  type: boolean
  inputBinding:
    prefix: -reference-species
- id: in_reference_assembly
  doc: -ra   Reference assembly [BAM HEADER].
  type: boolean
  inputBinding:
    prefix: -reference-assembly
- id: in_sample_study_mut
  doc: -mss  Mut sample study.
  type: boolean
  inputBinding:
    prefix: -sample-study-mut
- id: in_sample_accession_mut
  doc: -msa  Mut sample accession [BAM HEADER].
  type: boolean
  inputBinding:
    prefix: -sample-accession-mut
- id: in_sample_accession_source_mut
  doc: -msc  Mut sample accession source.
  type: boolean
  inputBinding:
    prefix: -sample-accession-source-mut
- id: in_seq_platform_mut
  doc: -msp  Mut sequencing platform. [BAM HEADER]
  type: boolean
  inputBinding:
    prefix: -seq-platform-mut
- id: in_sample_study_norm
  doc: -wss  Normal sample study.
  type: boolean
  inputBinding:
    prefix: -sample-study-norm
- id: in_sample_accession_norm
  doc: -wsa  Normal sample accession [BAM HEADER].
  type: boolean
  inputBinding:
    prefix: -sample-accession-norm
- id: in_sample_accession_source_norm
  doc: -wsc  Normal sample accession source.
  type: boolean
  inputBinding:
    prefix: -sample-accession-source-norm
- id: in_seq_platform_norm
  doc: -wsp  Normal sequencing platform [BAM HEADER].
  type: boolean
  inputBinding:
    prefix: -seq-platform-norm
- id: in_man
  doc: -m   Full documentation.
  type: boolean
  inputBinding:
    prefix: -man
- id: in_version
  doc: Version information.
  type: boolean
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: -o    Output file [STDOUT].
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
cwlVersion: v1.1
baseCommand:
- battenberg_CN_to_VCF.pl
