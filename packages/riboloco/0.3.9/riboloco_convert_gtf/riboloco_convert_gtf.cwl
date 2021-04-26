class: CommandLineTool
id: riboloco_convert_gtf.cwl
inputs:
- id: in_input_gtf
  doc: "A gtf file with your genome annotation. Can be .gz\ncompressed."
  type: File?
  inputBinding:
    prefix: --input_gtf
- id: in_output_filename
  doc: The outfile filename
  type: File?
  inputBinding:
    prefix: --output_filename
- id: in_filter_for_longest
  doc: "Only use the longest protein coding transcript\nassociated with each gene."
  type: boolean?
  inputBinding:
    prefix: --filter_for_longest
- id: in_no_fast_a
  doc: Don't generate a fasta of transcripts
  type: boolean?
  inputBinding:
    prefix: --no_fasta
- id: in_stop_correction
  doc: "Add 3 nt for stop codon. Can be changed to 0 depending\non whether the annotation\
    \ includes the stop codon\nwithin the annotated CDSs."
  type: long?
  inputBinding:
    prefix: --stop_correction
- id: in_feature_type_word
  doc: "Which transcript types to filter for. Set to 'all' to\ndisable. Default=protein_coding"
  type: string?
  inputBinding:
    prefix: --feature_type_word
- id: in_transcript_id_word
  doc: The key word that signifies exons. Default=exon
  type: string?
  inputBinding:
    prefix: --transcript_id_word
- id: in_early_stop
  doc: Stop after n reads parsed. -1 to disable (default)
  type: long?
  inputBinding:
    prefix: --early_stop
- id: in_bypass_tx_type_filter
  doc: "Sets CDS to same as transcript. Useful for writing out\neg snoRNAs\n"
  type: boolean?
  inputBinding:
    prefix: --bypass_tx_type_filter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename
  doc: The outfile filename
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/riboloco:0.3.9--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- riboloco_convert_gtf
