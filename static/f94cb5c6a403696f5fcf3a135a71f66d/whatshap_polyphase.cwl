class: CommandLineTool
id: whatshap_polyphase.cwl
inputs:
- id: in_ploidy
  doc: The ploidy of the sample(s). Argument is required.
  type: string?
  inputBinding:
    prefix: --ploidy
- id: in_output
  doc: "Output VCF file. Add .gz to the file name to get\ncompressed output. If omitted,\
    \ use standard output."
  type: File?
  inputBinding:
    prefix: --output
- id: in_reference
  doc: "Reference file. Provide this to detect alleles through\nre-alignment. If no\
    \ index (.fai) exists, it will be\ncreated"
  type: File?
  inputBinding:
    prefix: --reference
- id: in_tag
  doc: "Store phasing information with PS tag (standardized)\nor HP tag (used by GATK\
    \ ReadBackedPhasing) (default:\nPS)"
  type: string?
  inputBinding:
    prefix: --tag
- id: in_output_read_list
  doc: Write reads that have been used for phasing to FILE.
  type: File?
  inputBinding:
    prefix: --output-read-list
- id: in_mapping_quality
  doc: 'Minimum mapping quality (default: 20)'
  type: long?
  inputBinding:
    prefix: --mapping-quality
- id: in_indels
  doc: 'Also phase indels (default: do not phase indels)'
  type: boolean?
  inputBinding:
    prefix: --indels
- id: in_ignore_read_groups
  doc: "Ignore read groups in BAM/CRAM header and assume all\nreads come from the\
    \ same sample."
  type: boolean?
  inputBinding:
    prefix: --ignore-read-groups
- id: in_sample
  doc: "Name of a sample to phase. If not given, all samples\nin the input VCF are\
    \ phased. Can be used multiple\ntimes."
  type: string?
  inputBinding:
    prefix: --sample
- id: in_chromosome
  doc: "Name of chromosome to phase. If not given, all\nchromosomes in the input VCF\
    \ are phased. Can be used\nmultiple times."
  type: string?
  inputBinding:
    prefix: --chromosome
- id: in_verify_genotypes
  doc: "Verify input genotypes by re-typing them using the\ngiven reads."
  type: boolean?
  inputBinding:
    prefix: --verify-genotypes
- id: in_min_overlap
  doc: "Minimum required read overlap for internal read\nclustering stage (default:\
    \ 2)."
  type: long?
  inputBinding:
    prefix: --min-overlap
- id: in_ce_refinements
  doc: "Maximum number of refinement steps for internal read\nclustering stage (default:\
    \ 1)."
  type: long?
  inputBinding:
    prefix: --ce-refinements
- id: in_block_cut_sensitivity
  doc: "Strategy to determine block borders. 0 yields the\nlongest blocks with more\
    \ switch errors, 5 has the\nshortest blocks with lowest switch error rate\n(default:\
    \ 4).\n"
  type: long?
  inputBinding:
    prefix: --block-cut-sensitivity
- id: in_vcf
  doc: "VCF file with variants to be phased (can be gzip-\ncompressed)"
  type: string
  inputBinding:
    position: 0
- id: in_phase_input
  doc: BAM or CRAM with sequencing reads.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output VCF file. Add .gz to the file name to get\ncompressed output. If omitted,\
    \ use standard output."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- whatshap
- polyphase
