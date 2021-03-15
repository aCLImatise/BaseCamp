class: CommandLineTool
id: msstitch_storeseq.cwl
inputs:
- id: in_dbfile
  doc: Database lookup file
  type: File?
  inputBinding:
    prefix: --dbfile
- id: in_input_file_format
  doc: Input file of {} format
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_file
  doc: Output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_full_protein
  doc: "Store full protein sequences (at a minimum-match\nlength) in the SQLite file\
    \ rather than tryptic\nsequences"
  type: boolean?
  inputBinding:
    prefix: --fullprotein
- id: in_in_source_frag
  doc: "Apply filter against both intact peptides and those\nthat match to the C-terminal\
    \ part of a tryptic peptide\nfrom the database, resulting from in-source\nfragmentation,\
    \ where some amino acids will be missing\nfrom the N-terminus. Specify the max\
    \ number of amino\nacids that may be missing. Database should be built\nwith this\
    \ flag in order for the lookup to work, since\nsequences will be stored and looked\
    \ up reversed"
  type: boolean?
  inputBinding:
    prefix: --insourcefrag
- id: in_cut_proline
  doc: "Flag to make trypsin before a proline residue. Then\nfiltering will be done\
    \ against both cut and non-cut\npeptides."
  type: boolean?
  inputBinding:
    prefix: --cutproline
- id: in_min_len
  doc: Minimum length of peptide to be included
  type: long?
  inputBinding:
    prefix: --minlen
- id: in_no_trypsin
  doc: "Do not trypsinize. User is expected to deliver\napretrypsinized FASTA file"
  type: boolean?
  inputBinding:
    prefix: --notrypsin
- id: in_misc_leav
  doc: "Amount of missed cleavages to allow when trypsinizing,\ndefault is 0\n"
  type: long?
  inputBinding:
    prefix: --miscleav
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/msstitch:3.6--py_0
cwlVersion: v1.1
baseCommand:
- msstitch
- storeseq
