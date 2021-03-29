class: CommandLineTool
id: xcmp.cwl
inputs:
- id: in_input_v_cfs
  doc: "Two VCF files to compare (use file:sample\nfor a specific sample column)."
  type: File?
  inputBinding:
    prefix: --input-vcfs
- id: in_arg_output_variant
  doc: '[ --output-vcf ] arg          Output variant comparison results to VCF.'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_arg_output_failure
  doc: '[ --output-errors ] arg       Output failure information.'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_arg_reference_fasta
  doc: '[ --reference ] arg           The reference fasta file.'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_location_start
  doc: '[ --location ] arg            The location to start at.'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_arg_subset_ofregions
  doc: "[ --regions ] arg             Use a bed file for getting a subset of\nregions\
    \ (traversal via tabix)."
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_subset_oftargets_streaming
  doc: "[ --targets ] arg             Use a bed file for getting a subset of\ntargets\
    \ (streaming the whole file, ignoring\nthings outside the bed regions)."
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_arg_field_use
  doc: "[ --qq ] arg                  Field to use for quality scoring (this will\n\
    be output as the QQ info field)."
  type: boolean?
  inputBinding:
    prefix: -q
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
- id: in_arg_overlap_window
  doc: '[ --window ] arg              Overlap window to create haplotype blocks.'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_arg_maximum_number
  doc: '[ --max-n-haplotypes ] arg    Maximum number of haplotypes to enumerate.'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_expand_hap_blocks
  doc: "Number of bases to expand around each\nhaplotype block."
  type: long?
  inputBinding:
    prefix: --expand-hapblocks
- id: in_limit
  doc: Maximum number of haplotype blocks to
  type: long?
  inputBinding:
    prefix: --limit
- id: in_arg_apply_filtering
  doc: "[ --apply-filters-query ] arg Apply filtering in query VCF (off by\ndefault)."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_always_hap_cmp
  doc: "Always compare haplotype blocks (even if\nthey match). Testing use only/slow."
  type: string?
  inputBinding:
    prefix: --always-hapcmp
- id: in_no_hap_cmp
  doc: "Disable haplotype comparison. This overrides\nall other haplotype comparison\
    \ options.\n"
  type: string?
  inputBinding:
    prefix: --no-hapcmp
- id: in_process_dot
  doc: '--apply-filters-truth arg        Apply filtering in truth VCF (on by '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hap.py:0.3.14--py27h5c5a3ab_0
cwlVersion: v1.1
baseCommand:
- xcmp
