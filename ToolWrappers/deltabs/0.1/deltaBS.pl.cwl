class: CommandLineTool
id: deltaBS.pl.cwl
inputs:
- id: in__filetype_specify
  doc: "/ --filetype        :       Specify filetype, must be 'embl', 'genbank', or\
    \ 'fasta'"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_fone
  doc: '/ --file1           :       Reference genome/proteome in filetype format'
  type: boolean
  inputBinding:
    prefix: -f1
- id: in_f_two
  doc: '/ --file2           :       Comparator genome/proteome in filetype format'
  type: boolean
  inputBinding:
    prefix: -f2
- id: in_pfam_an_not_one
  doc: ':       Pfam annotations of proteome1'
  type: boolean
  inputBinding:
    prefix: --pfamannot1
- id: in_pfam_an_not_two
  doc: ':       Pfam annotations of proteome2'
  type: boolean
  inputBinding:
    prefix: --pfamannot2
- id: in_p_hmmer_an_not_one
  doc: ':       phmmer domtblout of proteome1 vs proteome2'
  type: boolean
  inputBinding:
    prefix: --phmmerannot1
- id: in_p_hmmer_an_not_two
  doc: ':       phmmer domtblout of proteome2 vs proteome1'
  type: boolean
  inputBinding:
    prefix: --phmmerannot2
- id: in__outdir_directory
  doc: '/ --outdir          :       Output directory'
  type: Directory
  inputBinding:
    prefix: -o
- id: in_ol
  doc: '/ --orthlist        :       Ortholog list file'
  type: boolean
  inputBinding:
    prefix: -ol
- id: in_hp
  doc: '/ --hmmerpath       :       Path to hmmer installation'
  type: boolean
  inputBinding:
    prefix: -hp
- id: in_hd
  doc: '/ --hmmlibdir       :       Path to hmm libraries (and annotation files for
    post-processing)'
  type: boolean
  inputBinding:
    prefix: -hd
- id: in__cpus_number
  doc: '/ --cpus            :       Number of CPUs for hmmsearch, phmmer etc to use.'
  type: boolean
  inputBinding:
    prefix: -c
- id: in__tempdir_path
  doc: '/ --tempdir         :       Path to temporary directory'
  type: boolean
  inputBinding:
    prefix: -t
- id: in__post_pathways
  doc: '/ --post            :       Enable post-processing (pathways, etc. EXPERIMENTAL)'
  type: boolean
  inputBinding:
    prefix: -p
- id: in__dirty_delete
  doc: '/ --dirty           :       Do not delete /tmp file'
  type: boolean
  inputBinding:
    prefix: -d
- id: in__verbose_turn
  doc: '/ --verbose         :       Turn on verbose messaging'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outdir_directory
  doc: '/ --outdir          :       Output directory'
  type: Directory
  outputBinding:
    glob: $(inputs.in__outdir_directory)
cwlVersion: v1.1
baseCommand:
- deltaBS.pl
