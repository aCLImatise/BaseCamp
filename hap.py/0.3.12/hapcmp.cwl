class: CommandLineTool
id: hapcmp.cwl
inputs:
- id: input_regions
  doc: The input bed file specifying haplotype block  regions (use - for stdin).
  type: string
  inputBinding:
    prefix: --input-regions
- id: input_v_cfs
  doc: Two VCF files to compare (use file:sample for a specific sample column).
  type: string
  inputBinding:
    prefix: --input-vcfs
- id: b
  doc: '[ --output-bed ] arg       Output block results as bed files (default is  to
    output to stdout).'
  type: boolean
  inputBinding:
    prefix: -b
- id: e
  doc: '[ --output-errors ] arg    Output failure information.'
  type: boolean
  inputBinding:
    prefix: -e
- id: d
  doc: '[ --output-diffs ] arg     Output shared and different variants to a mJSON
    file (one json record per line, default is to  not output diffs).'
  type: boolean
  inputBinding:
    prefix: -d
- id: r
  doc: '[ --reference ] arg        The reference fasta file.'
  type: boolean
  inputBinding:
    prefix: -r
- id: n
  doc: '[ --max-n-haplotypes ] arg Maximum number of haplotypes to enumerate.'
  type: boolean
  inputBinding:
    prefix: -n
- id: output_sequences
  doc: Set to true to output haplotype sequences.
  type: string
  inputBinding:
    prefix: --output-sequences
- id: progress
  doc: Set to true to output progress information.
  type: string
  inputBinding:
    prefix: --progress
- id: progress_seconds
  doc: Output progress information every n seconds.
  type: string
  inputBinding:
    prefix: --progress-seconds
- id: l
  doc: '[ --limit ] arg            Maximum number of haplotype blocks to process.'
  type: boolean
  inputBinding:
    prefix: -l
- id: f
  doc: '[ --apply-filters ] arg    Apply filtering in VCF.'
  type: boolean
  inputBinding:
    prefix: -f
- id: do_alignment
  doc: Perform alignments on mismatching haplotypes to find best approximate match.
  type: string
  inputBinding:
    prefix: --do-alignment
outputs: []
cwlVersion: v1.1
baseCommand:
- hapcmp
