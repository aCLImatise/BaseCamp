class: CommandLineTool
id: dunovo.py.cwl
inputs:
- id: in_outdir
  doc: "The directory to create the output (and intermediate)\nfiles in. Must exist\
    \ already and not already contain\nany of the output/intermediate files."
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_suffix
  doc: "A string to use in naming the output files. If given,\nwill be put just before\
    \ the file extension (like\n\"families.suffix.tsv\")."
  type: File?
  inputBinding:
    prefix: --suffix
- id: in_du_novo_dir
  doc: "The directory containing the version of Du Novo you\nwant to run. Default:\
    \ The directory containing this\nscript (/usr/local/lib)."
  type: Directory?
  inputBinding:
    prefix: --dunovo-dir
- id: in_pos
  doc: 'correct.py --pos. Default: the correct.py default.'
  type: string?
  inputBinding:
    prefix: --pos
- id: in_aligner
  doc: 'align-families.py --aligner. Default: kalign'
  type: string?
  inputBinding:
    prefix: --aligner
- id: in_min_reads
  doc: "make-consensi.py --min-reads. Default: the make-\nconsensi.py default."
  type: long?
  inputBinding:
    prefix: --min-reads
- id: in_qual
  doc: 'make-consensi.py --qual. Default: 25'
  type: long?
  inputBinding:
    prefix: --qual
- id: in_cons_th_res
  doc: 'make-consensi.py --cons-thres. Default: 0.7.'
  type: double?
  inputBinding:
    prefix: --cons-thres
- id: in_min_cons_reads
  doc: "make-consensi.py --min-cons-reads. Default: the make-\nconsensi.py default."
  type: long?
  inputBinding:
    prefix: --min-cons-reads
- id: in_fake_phred
  doc: "The PHRED score to assign to all output consensus\nbases."
  type: string?
  inputBinding:
    prefix: --fake-phred
- id: in_no_check_ids
  doc: Pass --no-check-ids to correct.py and align-
  type: boolean?
  inputBinding:
    prefix: --no-check-ids
- id: in_threads
  doc: 'baralign.sh -t. Default: the baralign.sh default.'
  type: string?
  inputBinding:
    prefix: --threads
- id: in_filt_bases
  doc: 'trimmer.py --filt-bases. Default: N'
  type: string?
  inputBinding:
    prefix: --filt-bases
- id: in_min_length
  doc: 'trimmer.py --min-length. Default: 75'
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_log_dir
  doc: "Write log output to files in this directory instead of\nto stderr."
  type: Directory?
  inputBinding:
    prefix: --log-dir
- id: in_no_validate
  doc: Skip validation checks on the outputs of individual
  type: boolean?
  inputBinding:
    prefix: --no-validate
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -T
- id: in_reads_one_dot_fq
  doc: Input reads (mate 1). Can be gzipped.
  type: long
  inputBinding:
    position: 0
- id: in_reads_two_dot_fq
  doc: Input reads (mate 2). Can be gzipped.
  type: long
  inputBinding:
    position: 1
- id: in_families_do_tpy_dot
  doc: -p PROCESSES, --processes PROCESSES
  type: string
  inputBinding:
    position: 0
- id: in_scripts_dot
  doc: --version             Print the version number and exit.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "The directory to create the output (and intermediate)\nfiles in. Must exist\
    \ already and not already contain\nany of the output/intermediate files."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_suffix
  doc: "A string to use in naming the output files. If given,\nwill be put just before\
    \ the file extension (like\n\"families.suffix.tsv\")."
  type: File?
  outputBinding:
    glob: $(inputs.in_suffix)
- id: out_log_dir
  doc: "Write log output to files in this directory instead of\nto stderr."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_log_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0
cwlVersion: v1.1
baseCommand:
- dunovo.py
