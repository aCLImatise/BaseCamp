class: CommandLineTool
id: anvi_script_process_genbank.cwl
inputs:
- id: in_input_genbank
  doc: 'Input GenBank file (default: None)'
  type: File?
  inputBinding:
    prefix: --input-genbank
- id: in_output_file_prefix
  doc: "A prefix to be used while naming the output files (no\nfile type extensions\
    \ please; just a prefix). (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --output-file-prefix
- id: in_output_fast_a
  doc: 'Output FASTA file path. (default: None)'
  type: File?
  inputBinding:
    prefix: --output-fasta
- id: in_output_gene_calls
  doc: "DELIMITED FILE\nOutput file path for external gene calls (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --output-gene-calls
- id: in_output_functions
  doc: "DELIMITED FILE\nOutput file path for anvi'o-importable gene functions\nfile\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --output-functions
- id: in_annotation_source
  doc: "Annotation source (default: \"NCBI_PGAP\") (default:\nNCBI_PGAP)"
  type: string?
  inputBinding:
    prefix: --annotation-source
- id: in_annotation_version
  doc: "Annotation source version to be stored in the database\n(default: \"v4.6\"\
    ) (default: v4.6)"
  type: double?
  inputBinding:
    prefix: --annotation-version
- id: in_genbank_file
  doc: '🍕 Can provide: '
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_prefix
  doc: "A prefix to be used while naming the output files (no\nfile type extensions\
    \ please; just a prefix). (default:\nNone)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_prefix)
- id: out_output_fast_a
  doc: 'Output FASTA file path. (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fast_a)
- id: out_output_gene_calls
  doc: "DELIMITED FILE\nOutput file path for external gene calls (default:\nNone)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_gene_calls)
- id: out_output_functions
  doc: "DELIMITED FILE\nOutput file path for anvi'o-importable gene functions\nfile\
    \ (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_functions)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-script-process-genbank
