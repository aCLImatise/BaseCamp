class: CommandLineTool
id: vcf2snv_alignment.pl.cwl
inputs:
- id: in_consolidate_vcf
  doc: =files/dataset2.dat --consolidate_vcf
  type: long?
  inputBinding:
    prefix: --consolidate_vcf
- id: in_invalid_pos
  doc: '[invalid positions TSV file] --numcpus 5 --bcftools-path'
  type: boolean?
  inputBinding:
    prefix: --invalid-pos
- id: in_format
  doc: "[OPTIONAL]\nThe format to output the alignment to, one of the Bio::AlignIO\n\
    supported formats (default: fasta)."
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_output_base
  doc: "[REQUIRED]\nThe output base name for the alignment file(s)."
  type: File?
  inputBinding:
    prefix: --output-base
- id: in_reference
  doc: "[OPTIONAL]\nThe name of the reference to use in the alignment (default:\n\
    reference)."
  type: boolean?
  inputBinding:
    prefix: --reference
- id: in_fast_a
  doc: "[REQUIRED]\nFasta file."
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_num_cpus
  doc: "[REQUIRED]\nDesired number of CPUs for the job."
  type: boolean?
  inputBinding:
    prefix: --numcpus
- id: in_bcf_tools_path
  doc: "[OPTIONAL]\nPath to BCFTools."
  type: boolean?
  inputBinding:
    prefix: --bcftools-path
- id: in_v_three
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_base
  doc: "[REQUIRED]\nThe output base name for the alignment file(s)."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_base)
hints: []
cwlVersion: v1.1
baseCommand:
- vcf2snv_alignment.pl
