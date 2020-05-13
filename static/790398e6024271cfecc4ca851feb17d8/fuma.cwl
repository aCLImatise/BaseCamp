class: CommandLineTool
id: fuma.cwl
inputs:
- id: formats
  doc: show accepted dataset formats
  type: boolean
  inputBinding:
    prefix: --formats
- id: matching_method
  doc: The used method to match two gene sets. Overlap matches when two gene set have
    one or more genes overlapping. Subset matches when one gene set is a subset of
    the other. EGM is exact gene matching; all genes in both sets need to be identical
    to match.
  type: string
  inputBinding:
    prefix: --matching-method
- id: strand_specific_matching
  doc: 'Consider fusion genes distinct when the breakpoints have different strands:
    (A<-,B<-) != (->A,B<-); default'
  type: boolean
  inputBinding:
    prefix: --strand-specific-matching
- id: no_strand_specific_matching
  doc: 'Consider fusion genes identical when the breakpoints have different strands:
    (A<-,B<-) == (->A,B<-)'
  type: boolean
  inputBinding:
    prefix: --no-strand-specific-matching
- id: accept_or_donor_order_specific_matching
  doc: 'Consider fusion genes distinct when the donor and acceptor sites are swapped:
    (A,B) != (B,A)'
  type: boolean
  inputBinding:
    prefix: --acceptor-donor-order-specific-matching
- id: no_accept_or_donor_order_specific_matching
  doc: 'Consider fusion genes identical when the donor and acceptor sites are swapped:
    (A,B) == (B,A); default'
  type: boolean
  inputBinding:
    prefix: --no-acceptor-donor-order-specific-matching
- id: verbose
  doc: increase output verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: a
  doc: '[ADD_GENE_ANNOTATION [ADD_GENE_ANNOTATION ...]], --add-gene-annotation [ADD_GENE_ANNOTATION
    [ADD_GENE_ANNOTATION ...]] annotation_alias:filename * file in BED format'
  type: boolean
  inputBinding:
    prefix: -a
- id: add_sample
  doc: 'sample_alias:format:filename (available formats: fuma --formats)'
  type: string[]
  inputBinding:
    prefix: --add-sample
- id: l
  doc: '[LINK_SAMPLE_TO_ANNOTATION [LINK_SAMPLE_TO_ANNOTATION ...]], --link-sample-to-annotation
    [LINK_SAMPLE_TO_ANNOTATION [LINK_SAMPLE_TO_ANNOTATION ...]] sample_alias:annotation_alias'
  type: boolean
  inputBinding:
    prefix: -l
- id: format
  doc: Output-format
  type: string
  inputBinding:
    prefix: --format
- id: long_gene_size
  doc: Gene-name based matching is more sensitive to long genes. This is the gene
    size used to mark fusion genes spanning a 'long gene' as reported the output.
    Use 0 to disable this feature.
  type: string
  inputBinding:
    prefix: --long-gene-size
- id: output
  doc: output filename; '-' for stdout
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- fuma
