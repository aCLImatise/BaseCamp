class: CommandLineTool
id: kmer_cov_plot.cwl
inputs:
- id: tabular
  doc: Output the information as one read per line, as the FASTA/FASTQ tag followed
    by the k-mer coverage values, tab-delimited.  The coverage of invalid k-mers is
    marked as -1.  Without -f, the sum of the coverage of the forward and reverse
    complement k-mers is printed.  Cannot be used with --display-kmers.
  type: boolean
  inputBinding:
    prefix: --tabular
- id: display_km_ers
  doc: Display the actual k-mer in addition to the counts. Cannot be used with --tabular.
  type: boolean
  inputBinding:
    prefix: --display-kmers
- id: forward_only
  doc: Display count (and k-mer with -k) for the forward k-mer only.
  type: boolean
  inputBinding:
    prefix: --forward-only
- id: sum_only
  doc: Display only the combined count of the forward and reverse complement k-mers.  Default
    with --tabular.
  type: boolean
  inputBinding:
    prefix: --sum-only
- id: no_tags
  doc: Do not print sequence tags.
  type: boolean
  inputBinding:
    prefix: --no-tags
- id: no_indices
  doc: Do not print the index of each k-mer.  Ignored if --tabular is given.
  type: boolean
  inputBinding:
    prefix: --no-indices
outputs: []
cwlVersion: v1.1
baseCommand:
- kmer-cov-plot
