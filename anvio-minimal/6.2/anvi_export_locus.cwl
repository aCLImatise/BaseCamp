class: CommandLineTool
id: anvi_export_locus.cwl
inputs:
- id: contigs_db
  doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  type: string
  inputBinding:
    prefix: --contigs-db
- id: search_term
  doc: search term.
  type: string
  inputBinding:
    prefix: --search-term
- id: gene_caller_ids
  doc: Gene caller ids. Multiple of them can be declared separated by a delimiter
    (the default is a comma). In anvi-gen-variability-profile, if you declare nothing
    you will get all genes matching your other filtering criteria. In other programs,
    you may get everything, nothing, or an error. It really depends on the situation.
    Fortunately, mistakes are cheap, so it's worth a try.
  type: string
  inputBinding:
    prefix: --gene-caller-ids
- id: delimiter
  doc: The delimiter to parse multiple input terms. The default is ','.
  type: string
  inputBinding:
    prefix: --delimiter
- id: output_dir
  doc: Directory path for output files
  type: string
  inputBinding:
    prefix: --output-dir
- id: output_file_prefix
  doc: A prefix to be used while naming the output files (no file type extensions
    please; just a prefix).
  type: File
  inputBinding:
    prefix: --output-file-prefix
- id: overwrite_output_destinations
  doc: Overwrite if the output files and/or directories exist.
  type: boolean
  inputBinding:
    prefix: --overwrite-output-destinations
- id: remove_partial_hits
  doc: By default anvi'o will return hits even if they are partial. Declaring this
    flag will make anvi'o filter all hits that are partial. Partial hits are hits
    in which you asked for n1 genes before and n2 genes after the gene that matched
    the search criteria but the search hits the end of the contig before finding the
    number of genes that you asked.
  type: boolean
  inputBinding:
    prefix: --remove-partial-hits
- id: never_reverse_complement
  doc: By default, if a gene that is found by the search criteria is reverse in it's
    direction, then the sequence of the entire locus is reversed before it is saved
    to the output. If you wish to prevent this behavior then use the flag --never-reverse-complement.
  type: boolean
  inputBinding:
    prefix: --never-reverse-complement
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-export-locus
