class: CommandLineTool
id: emmtyper.cwl
inputs:
- id: in_workflow
  doc: '[blast|pcr]      Choose workflow  [default: blast]'
  type: boolean?
  inputBinding:
    prefix: --workflow
- id: in_blast_db
  doc: "Path to EMM BLAST DB  [default:\n/usr/local/lib/python3.7/site-\npackages/emmtyper/db/emm.fna]"
  type: File?
  inputBinding:
    prefix: --blast_db
- id: in_keep
  doc: "Keep BLAST and isPcr output files.\n[default: False]"
  type: boolean?
  inputBinding:
    prefix: --keep
- id: in_cluster_distance
  doc: "Distance between cluster of matches to\nconsider as different clusters.  [default:\n\
    500]"
  type: long?
  inputBinding:
    prefix: --cluster-distance
- id: in_output
  doc: Output stream. Path to file for output to a
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_format
  doc: "[short|verbose|visual]\nOutput format."
  type: boolean?
  inputBinding:
    prefix: --output-format
- id: in_dust
  doc: "[yes|no|level window linker]\n[BLAST] Filter query sequence with DUST.\n[default:\
    \ no]"
  type: boolean?
  inputBinding:
    prefix: --dust
- id: in_percent_identity
  doc: '[BLAST] Minimal percent identity of'
  type: long?
  inputBinding:
    prefix: --percent-identity
- id: in_culling_limit
  doc: "[BLAST] Total hits to return in a position.\n[default: 5]"
  type: long?
  inputBinding:
    prefix: --culling-limit
- id: in_mismatch
  doc: "[BLAST] Threshold for number of mismatch to\nallow in BLAST hit.  [default:\
    \ 4]"
  type: long?
  inputBinding:
    prefix: --mismatch
- id: in_align_diff
  doc: "[BLAST] Threshold for difference between\nalignment length and subject length\
    \ in BLAST\nhit.  [default: 5]"
  type: long?
  inputBinding:
    prefix: --align-diff
- id: in_gap
  doc: "[BLAST] Threshold gap to allow in BLAST hit.\n[default: 2]"
  type: long?
  inputBinding:
    prefix: --gap
- id: in_blast_path
  doc: '[BLAST] Specify full path to blastn'
  type: File?
  inputBinding:
    prefix: --blast-path
- id: in_min_perfect
  doc: "[isPcr] Minimum size of perfect match at 3'\nprimer end.  [default: 15]"
  type: long?
  inputBinding:
    prefix: --min-perfect
- id: in_min_good
  doc: "[isPcr] Minimum size where there must be 2\nmatches for each mismatch.  [default:\
    \ 15]"
  type: long?
  inputBinding:
    prefix: --min-good
- id: in_max_size
  doc: "[isPcr] Maximum size of PCR product.\n[default: 2000]"
  type: long?
  inputBinding:
    prefix: --max-size
- id: in_is_pcr_path
  doc: '[isPcr] Specify full path to isPcr'
  type: File?
  inputBinding:
    prefix: --ispcr-path
- id: in_file_dot
  doc: '[default: stdout]'
  type: File
  inputBinding:
    position: 0
- id: in__primerdb_text
  doc: --primer-db TEXT                [isPcr] PCR primer. Text file with 3
  type: string
  inputBinding:
    position: 1
- id: in_primer_dot
  doc: '[default:'
  type: string
  inputBinding:
    position: 0
- id: in_help_show_message
  doc: --help                          Show this message and exit.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output stream. Path to file for output to a
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/emmtyper:0.2.0--py_0
cwlVersion: v1.1
baseCommand:
- emmtyper
