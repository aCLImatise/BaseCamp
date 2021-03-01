class: CommandLineTool
id: fuma.cwl
inputs:
- id: in_formats
  doc: show accepted dataset formats
  type: boolean?
  inputBinding:
    prefix: --formats
- id: in_matching_method
  doc: "The used method to match two gene sets. Overlap\nmatches when two gene set\
    \ have one or more genes\noverlapping. Subset matches when one gene set is a\n\
    subset of the other. EGM is exact gene matching; all\ngenes in both sets need\
    \ to be identical to match."
  type: string?
  inputBinding:
    prefix: --matching-method
- id: in_strand_specific_matching
  doc: "Consider fusion genes distinct when the breakpoints\nhave different strands:\
    \ (A<-,B<-) != (->A,B<-);\ndefault"
  type: boolean?
  inputBinding:
    prefix: --strand-specific-matching
- id: in_no_strand_specific_matching
  doc: "Consider fusion genes identical when the breakpoints\nhave different strands:\
    \ (A<-,B<-) == (->A,B<-)"
  type: boolean?
  inputBinding:
    prefix: --no-strand-specific-matching
- id: in_accept_or_donor_order_specific_matching
  doc: "Consider fusion genes distinct when the donor and\nacceptor sites are swapped:\
    \ (A,B) != (B,A)"
  type: boolean?
  inputBinding:
    prefix: --acceptor-donor-order-specific-matching
- id: in_no_accept_or_donor_order_specific_matching
  doc: "Consider fusion genes identical when the donor and\nacceptor sites are swapped:\
    \ (A,B) == (B,A); default"
  type: boolean?
  inputBinding:
    prefix: --no-acceptor-donor-order-specific-matching
- id: in_verbose
  doc: increase output verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_annotationaliasfilename_file_bed
  doc: "[ADD_GENE_ANNOTATION [ADD_GENE_ANNOTATION ...]], --add-gene-annotation [ADD_GENE_ANNOTATION\
    \ [ADD_GENE_ANNOTATION ...]]\nannotation_alias:filename * file in BED format"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_add_sample
  doc: "sample_alias:format:filename (available formats: fuma\n--formats)"
  type: string[]
  inputBinding:
    prefix: --add-sample
- id: in_samplealiasannotationalias
  doc: "[LINK_SAMPLE_TO_ANNOTATION [LINK_SAMPLE_TO_ANNOTATION ...]], --link-sample-to-annotation\
    \ [LINK_SAMPLE_TO_ANNOTATION [LINK_SAMPLE_TO_ANNOTATION ...]]\nsample_alias:annotation_alias"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_output
  doc: output filename; '-' for stdout
  type: File?
  inputBinding:
    prefix: --output
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_output_format
  doc: -g LONG_GENE_SIZE, --long-gene-size LONG_GENE_SIZE
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output filename; '-' for stdout
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- fuma
