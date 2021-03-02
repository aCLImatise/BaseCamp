class: CommandLineTool
id: phigaro.cwl
inputs:
- id: in_fast_a_file
  doc: Assembly scaffolds/contigs or full genomes, required
  type: File?
  inputBinding:
    prefix: --fasta-file
- id: in_config
  doc: "Path to the config file, not required. The deafult is\n/root/.phigaro/config.yml"
  type: File?
  inputBinding:
    prefix: --config
- id: in_print_vogs
  doc: Print phage vogs for each region
  type: boolean?
  inputBinding:
    prefix: --print-vogs
- id: in_extension
  doc: "Type of the output: html, tsv, gff, bed or stdout.\nDefault is html. You can\
    \ specify several file formats\nwith a space as a separator. Example: -e tsv html\n\
    stdout."
  type: File?
  inputBinding:
    prefix: --extension
- id: in_output
  doc: "Output filename for html and txt outputs. Required by\ndefault, but not required\
    \ for stdout only output."
  type: File?
  inputBinding:
    prefix: --output
- id: in_not_open
  doc: "Do not open html file automatically, if html output\ntype is specified."
  type: File?
  inputBinding:
    prefix: --not-open
- id: in_threads
  doc: Num of threads (default is num of CPUs=8)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_no_cleanup
  doc: "Do not delete any temporary files that was generated\nby Phigaro (HMMER &\
    \ Prodigal outputs and some others)."
  type: boolean?
  inputBinding:
    prefix: --no-cleanup
- id: in_substitute_output
  doc: "If you have precomputed prodigal and/or hmmer data you\ncan provide paths\
    \ to the files in the following\nformat: program:address/to/the/file. In place\
    \ of\nprogram you should write hmmer or prodigal. If you\nneed to provide both\
    \ files you should pass them\nseparetely as two parametres."
  type: File?
  inputBinding:
    prefix: --substitute-output
- id: in_save_fast_a
  doc: Save all phage fasta sequences in a fasta file.
  type: boolean?
  inputBinding:
    prefix: --save-fasta
- id: in_delete_shorts
  doc: Exclude sequences with length < 20000 automatically.
  type: boolean?
  inputBinding:
    prefix: --delete-shorts
- id: in_mode
  doc: "You can launch Phigaro at one of 3 modes: basic, abs,\nwithout_gc. Default\
    \ is basic. Read more about modes at\nhttps://github.com/bobeobibo/phigaro/\n"
  type: long?
  inputBinding:
    prefix: --mode
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_extension
  doc: "Type of the output: html, tsv, gff, bed or stdout.\nDefault is html. You can\
    \ specify several file formats\nwith a space as a separator. Example: -e tsv html\n\
    stdout."
  type: File?
  outputBinding:
    glob: $(inputs.in_extension)
- id: out_output
  doc: "Output filename for html and txt outputs. Required by\ndefault, but not required\
    \ for stdout only output."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_not_open
  doc: "Do not open html file automatically, if html output\ntype is specified."
  type: File?
  outputBinding:
    glob: $(inputs.in_not_open)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phigaro:2.3.0--pyh7b7c402_1
cwlVersion: v1.1
baseCommand:
- phigaro
