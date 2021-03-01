class: CommandLineTool
id: metabinkit_blast.cwl
inputs:
- id: in_reference_blast_indexed
  doc: '- reference Blast indexed database'
  type: File?
  inputBinding:
    prefix: -f
- id: in_output_format_default
  doc: '- output format (default: 6 qseqid evalue pident qcovs saccver staxids ssciname
    sseqid)'
  type: long?
  inputBinding:
    prefix: -o
- id: in_folder_ncbis_taxonomy
  doc: "- folder with NCBI's taxonomy database (default:/usr/local/bin/../db/)"
  type: Directory?
  inputBinding:
    prefix: -T
- id: in_maximum_number_threads
  doc: '- maximum number of threads (default:2)'
  type: long?
  inputBinding:
    prefix: -t
- id: in_blasts_maxhsps_paramater
  doc: "- BLAST's max_hsps paramater (default:1)"
  type: long?
  inputBinding:
    prefix: -m
- id: in_blasts_wordsize_paramater
  doc: "- BLAST's word_size paramater (default:6)"
  type: long?
  inputBinding:
    prefix: -w
- id: in_blasts_evalue_paramater
  doc: "- BLAST's evalue paramater (default:1)"
  type: long?
  inputBinding:
    prefix: -e
- id: in_blasts_percidentity_paramater
  doc: "- BLAST's perc_identity paramater (default:50)"
  type: long?
  inputBinding:
    prefix: -I
- id: in_blasts_qcovhspperc_paramater
  doc: "- BLAST's qcov_hsp_perc paramater (default:98)"
  type: long?
  inputBinding:
    prefix: -q
- id: in_blasts_gapopen_paramater
  doc: "- BLAST's gapopen paramater (default:0)"
  type: long?
  inputBinding:
    prefix: -G
- id: in_blasts_gapextend_paramater
  doc: "- BLAST's gapextend paramater (default:2)"
  type: long?
  inputBinding:
    prefix: -E
- id: in_blasts_task_parameter
  doc: "- BLAST's task parameter (default:blastn)"
  type: string?
  inputBinding:
    prefix: -X
- id: in_restrict_search_present
  doc: '- restrict search to taxids not present in the files provided (separated by
    comma). This options is incompatible with -P.'
  type: string?
  inputBinding:
    prefix: -r
- id: in_restrict_search_taxids
  doc: '- restrict search to taxids present in the files provided (separated by comma).
    This option is incompatible with -N.'
  type: string?
  inputBinding:
    prefix: -P
- id: in_print_metabinkit_version
  doc: '- print metabinkit version and exits'
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- metabinkit_blast
