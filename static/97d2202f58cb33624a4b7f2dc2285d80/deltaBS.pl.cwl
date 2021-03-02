class: CommandLineTool
id: deltaBS.pl.cwl
inputs:
- id: in_file_type
  doc: ":       Specify filetype, must be 'embl', 'genbank', or 'fasta'"
  type: boolean?
  inputBinding:
    prefix: --filetype
- id: in_file_one
  doc: ':       Reference genome/proteome in filetype format'
  type: boolean?
  inputBinding:
    prefix: --file1
- id: in_file_two
  doc: ':       Comparator genome/proteome in filetype format'
  type: boolean?
  inputBinding:
    prefix: --file2
- id: in_pfam_an_not_one
  doc: ':       Pfam annotations of proteome1'
  type: boolean?
  inputBinding:
    prefix: --pfamannot1
- id: in_pfam_an_not_two
  doc: ':       Pfam annotations of proteome2'
  type: boolean?
  inputBinding:
    prefix: --pfamannot2
- id: in_p_hmmer_an_not_one
  doc: ':       phmmer domtblout of proteome1 vs proteome2'
  type: boolean?
  inputBinding:
    prefix: --phmmerannot1
- id: in_p_hmmer_an_not_two
  doc: ':       phmmer domtblout of proteome2 vs proteome1'
  type: boolean?
  inputBinding:
    prefix: --phmmerannot2
- id: in_outdir
  doc: ':       Output directory'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_orth_list
  doc: ':       Ortholog list file'
  type: boolean?
  inputBinding:
    prefix: --orthlist
- id: in_hmmer_path
  doc: ':       Path to hmmer installation'
  type: boolean?
  inputBinding:
    prefix: --hmmerpath
- id: in_hmm_libdir
  doc: ':       Path to hmm libraries (and annotation files for post-processing)'
  type: boolean?
  inputBinding:
    prefix: --hmmlibdir
- id: in_cpus
  doc: ':       Number of CPUs for hmmsearch, phmmer etc to use.'
  type: boolean?
  inputBinding:
    prefix: --cpus
- id: in_tempdir
  doc: ':       Path to temporary directory'
  type: boolean?
  inputBinding:
    prefix: --tempdir
- id: in_post
  doc: ':       Enable post-processing (pathways, etc. EXPERIMENTAL)'
  type: boolean?
  inputBinding:
    prefix: --post
- id: in_dirty
  doc: ':       Do not delete /tmp file'
  type: boolean?
  inputBinding:
    prefix: --dirty
- id: in_verbose
  doc: ':       Turn on verbose messaging'
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: ':       Output directory'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- deltaBS.pl
