class: CommandLineTool
id: nucdiff.cwl
inputs:
- id: in_reloc_dist
  doc: "[int]    - Minimum distance between two relocated blocks\n[10000]"
  type: boolean
  inputBinding:
    prefix: --reloc_dist
- id: in_nuc_mer_opt
  doc: "[NUCMER_OPT]\n- NUCmer run options. By default, NUCmer will be run\nwith its\
    \ default parameters values, except the\n--maxmatch parameter. --maxmatch is hard\
    \ coded and\ncannot be changed. To change any other parameter\nvalues, type parameter\
    \ names and new values inside\nsingle or double quotation marks."
  type: boolean
  inputBinding:
    prefix: --nucmer_opt
- id: in_filter_opt
  doc: "[FILTER_OPT]\n- Delta-filter run options. By default, it will be run\nwith\
    \ -q parameter only. -q is hard coded and cannot be\nchanged. To add any other\
    \ parameter values, type\nparameter names and their values inside single or\n\
    double quotation marks."
  type: boolean
  inputBinding:
    prefix: --filter_opt
- id: in_delta_file
  doc: "[DELTA_FILE]\n- Path to the already existing delta file (NUCmer\noutput file)"
  type: File
  inputBinding:
    prefix: --delta_file
- id: in_proc
  doc: '[int]          - Number of processes to be used [1]'
  type: boolean
  inputBinding:
    prefix: --proc
- id: in_ref_name_full
  doc: "[{yes,no}]\n- Print full reference names in output files ('yes'\nvalue). In\
    \ case of 'no', everything after the first\nspace will be ignored. ['no']"
  type: boolean
  inputBinding:
    prefix: --ref_name_full
- id: in_query_name_full
  doc: "[{yes,no}]\n- Print full query names in output files ('yes'\nvalue). In case\
    \ of 'no', everything after the first\nspace will be ignored.['no']"
  type: boolean
  inputBinding:
    prefix: --query_name_full
- id: in_vcf
  doc: '[{yes,no}]      - Output small and medium local differences in the VCF'
  type: boolean
  inputBinding:
    prefix: --vcf
- id: in_reference_dot_fast_a
  doc: '- Fasta file with the reference sequences'
  type: string
  inputBinding:
    position: 0
- id: in_query_dot_fast_a
  doc: '- Fasta file with the query sequences'
  type: string
  inputBinding:
    position: 1
- id: in_output_dir
  doc: "- Path to the directory where all intermediate and\nfinal results will be\
    \ stored"
  type: string
  inputBinding:
    position: 2
- id: in_prefix
  doc: "- Name that will be added to all generated files\nincluding the ones created\
    \ by NUCmer"
  type: string
  inputBinding:
    position: 3
- id: in_format
  doc: --version             show program's version number and exit
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_delta_file
  doc: "[DELTA_FILE]\n- Path to the already existing delta file (NUCmer\noutput file)"
  type: File
  outputBinding:
    glob: $(inputs.in_delta_file)
cwlVersion: v1.1
baseCommand:
- nucdiff
