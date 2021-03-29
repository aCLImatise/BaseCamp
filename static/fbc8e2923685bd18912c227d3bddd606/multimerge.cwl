class: CommandLineTool
id: multimerge.cwl
inputs:
- id: in_input_file
  doc: The input files
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_arg_output_file
  doc: '[ --output-file ] arg   The output file name.'
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_reference_fasta
  doc: '[ --reference ] arg     The reference fasta file.'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_start_location
  doc: '[ --location ] arg      Start location.'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_arg_use_regionstraversal
  doc: "[ --regions ] arg       Use a bed file for getting a subset of regions\n(traversal\
    \ via tabix)."
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_targetsstreaming_whole_file
  doc: "[ --targets ] arg       Use a bed file for getting a subset of targets\n(streaming\
    \ the whole file, ignoring things outside\nthe bed regions)."
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_limit_records
  doc: Maximum umber of records to process
  type: string?
  inputBinding:
    prefix: --limit-records
- id: in_message_every
  doc: Print a message every N records.
  type: string?
  inputBinding:
    prefix: --message-every
- id: in_arg_apply_filtering
  doc: '[ --apply-filters ] arg Apply filtering in VCF.'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_left_shift
  doc: Leftshift variant alleles.
  type: string?
  inputBinding:
    prefix: --leftshift
- id: in_trim_alleles
  doc: Remove unused variant alleles.
  type: string?
  inputBinding:
    prefix: --trimalleles
- id: in_split_alleles
  doc: Split and sort variant alleles.
  type: string?
  inputBinding:
    prefix: --splitalleles
- id: in_merge_by_location
  doc: Merge calls at the same location.
  type: string?
  inputBinding:
    prefix: --merge-by-location
- id: in_unique_alleles
  doc: Make alleles unique across a single line.
  type: string?
  inputBinding:
    prefix: --unique-alleles
- id: in_hom_ref_split
  doc: Split homref blocks into per-nucleotide blocks.
  type: string?
  inputBinding:
    prefix: --homref-split
- id: in_hom_ref_vcf_out
  doc: Output split homref blocks as BCF/VCF.
  type: string?
  inputBinding:
    prefix: --homref-vcf-out
- id: in_calls_only
  doc: Remove homref blocks.
  type: string?
  inputBinding:
    prefix: --calls-only
- id: in_primitives
  doc: Split complex alleles into primitives via
  type: string?
  inputBinding:
    prefix: --primitives
- id: in_process_formats
  doc: Process GQ/DP/AD format fields.
  type: string?
  inputBinding:
    prefix: --process-formats
- id: in_realignment_dot
  doc: --process-split arg        Enables splitalleles, trimalleles, unique-alleles,
  type: string
  inputBinding:
    position: 0
- id: in_left_shift_dot
  doc: --process-full arg         Enables splitalleles, trimalleles, unique-alleles,
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: '[ --output-file ] arg   The output file name.'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hap.py:0.3.14--py27h5c5a3ab_0
cwlVersion: v1.1
baseCommand:
- multimerge
