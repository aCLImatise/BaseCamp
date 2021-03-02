class: CommandLineTool
id: hapcmp.cwl
inputs:
- id: in_input_regions
  doc: "The input bed file specifying haplotype block\nregions (use - for stdin)."
  type: File?
  inputBinding:
    prefix: --input-regions
- id: in_input_v_cfs
  doc: "Two VCF files to compare (use file:sample for a\nspecific sample column)."
  type: File?
  inputBinding:
    prefix: --input-vcfs
- id: in_arg_output_block
  doc: "[ --output-bed ] arg       Output block results as bed files (default is\n\
    to output to stdout)."
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_arg_output_failure
  doc: '[ --output-errors ] arg    Output failure information.'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_arg_output_shared
  doc: "[ --output-diffs ] arg     Output shared and different variants to a mJSON\n\
    file (one json record per line, default is to\nnot output diffs)."
  type: File?
  inputBinding:
    prefix: -d
- id: in_arg_reference_fasta
  doc: '[ --reference ] arg        The reference fasta file.'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_maximum_number_enumerate
  doc: '[ --max-n-haplotypes ] arg Maximum number of haplotypes to enumerate.'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_output_sequences
  doc: Set to true to output haplotype sequences.
  type: string?
  inputBinding:
    prefix: --output-sequences
- id: in_progress
  doc: Set to true to output progress information.
  type: string?
  inputBinding:
    prefix: --progress
- id: in_progress_seconds
  doc: Output progress information every n seconds.
  type: string?
  inputBinding:
    prefix: --progress-seconds
- id: in_arg_maximum_number_process
  doc: '[ --limit ] arg            Maximum number of haplotype blocks to process.'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_arg_apply_filtering
  doc: '[ --apply-filters ] arg    Apply filtering in VCF.'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_do_alignment
  doc: "Perform alignments on mismatching haplotypes to\nfind best approximate match.\n"
  type: string?
  inputBinding:
    prefix: --do-alignment
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_shared
  doc: "[ --output-diffs ] arg     Output shared and different variants to a mJSON\n\
    file (one json record per line, default is to\nnot output diffs)."
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_shared)
hints: []
cwlVersion: v1.1
baseCommand:
- hapcmp
