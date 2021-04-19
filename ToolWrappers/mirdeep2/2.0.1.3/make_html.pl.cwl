class: CommandLineTool
id: make_html.pl.cwl
inputs:
- id: in_only_output_hairpins
  doc: only output hairpins with score above 2
  type: long?
  inputBinding:
    prefix: -v
- id: in_also_create_overview
  doc: also create overview in excel format.
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_supply_file_known
  doc: supply file with known miRNAs
  type: File?
  inputBinding:
    prefix: -k
- id: in_supply_survey_file
  doc: supply survey file if score cutoff is used to get information about how big
    is the confidence of resulting reads
  type: File?
  inputBinding:
    prefix: -s
- id: in_report_complete_file
  doc: report complete survey file
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_report_survey_current
  doc: report survey for current score cutoff
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_rfam_file_check
  doc: Rfam file to check for already reported small RNA sequences
  type: File?
  inputBinding:
    prefix: -r
- id: in_mirbasemrd_file_produced
  doc: miRBase.mrd file produced by quantifier module
  type: File?
  inputBinding:
    prefix: -q
- id: in_signaturearf_file_mapped
  doc: signature.arf file with mapped reads to precursors
  type: File?
  inputBinding:
    prefix: -x
- id: in_specify_organism_your
  doc: specify the organism from which your sequencing data was obtained
  type: string?
  inputBinding:
    prefix: -t
- id: in_print_available_organisms
  doc: print all available UCSC input organisms
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_timestamp_of_run
  doc: timestamp of this run
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_sort_signature_sample
  doc: sort signature by sample in pdf file, default is by beginning position
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_do_generate_pdfs
  doc: do not generate pdfs
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_print_genomic_coordinates
  doc: print genomic coordinates of mature sequence (still testing)
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_supply_confidence_file
  doc: supply confidence file
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_mirdeep_version_used
  doc: miRDeep2 version used
  type: boolean?
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- make_html.pl
