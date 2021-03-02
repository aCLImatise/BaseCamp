class: CommandLineTool
id: ModifyHTseq.cwl
inputs:
- id: in_input
  doc: Input file in bam format. default=none
  type: File?
  inputBinding:
    prefix: --input
- id: in_gtf_file
  doc: Standard GTF file of a specific species.
  type: File?
  inputBinding:
    prefix: --gtfFile
- id: in_output_file
  doc: File name of output files.
  type: File?
  inputBinding:
    prefix: --outputFile
- id: in_type
  doc: "Feature type (3rd column in GFF file) to be used.\n[exon or CDS]"
  type: File?
  inputBinding:
    prefix: --type
- id: in_mode
  doc: "mode to handle reads overlapping more than one\nfeature, the same as htseq-count\
    \ [union,intersection-\nstrict,intersection-nonempty]. default=union"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_min_quality
  doc: The minimum quality of base to be required! default=10
  type: long?
  inputBinding:
    prefix: --min-quality
- id: in_min_len
  doc: "The minimum length of reads to be considered.\ndefault=25(nt)"
  type: long?
  inputBinding:
    prefix: --minLen
- id: in_maxlen
  doc: "The max length of reads to be considered.\ndefault=35(nt)"
  type: long?
  inputBinding:
    prefix: --maxLen
- id: in_exclude_first
  doc: "The number of nucleotides need to be excluded from\nstart codon. default=45(nt)=15(codon)"
  type: long?
  inputBinding:
    prefix: --exclude-first
- id: in_exclude_last
  doc: "The number of nucleotides need to be excluded from\nstop codon. default=15(nt)=5(codon)"
  type: long?
  inputBinding:
    prefix: --exclude-last
- id: in_id_type
  doc: "define the id type users input. the default is gene\nid, the same as '-i'\
    \ in htseq-count. default=gene_id\n"
  type: string?
  inputBinding:
    prefix: --id-type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: File name of output files.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- ModifyHTseq
