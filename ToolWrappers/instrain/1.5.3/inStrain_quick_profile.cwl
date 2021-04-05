class: CommandLineTool
id: inStrain_quick_profile.cwl
inputs:
- id: in_processes
  doc: 'Number of processes to use (default: 6)'
  type: long?
  inputBinding:
    prefix: --processes
- id: in_debug
  doc: 'Make extra debugging output (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_scaffold_bin_be
  doc: "[STB [STB ...]], --stb [STB [STB ...]]\nScaffold to bin. This can be a file\
    \ with each line\nlisting a scaffold and a bin name, tab-seperated. This\ncan\
    \ also be a space-seperated list of .fasta files,\nwith one genome per .fasta\
    \ file. If nothing is\nprovided, all scaffolds will be treated as belonging\n\
    to the same genome (default: [])"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_output
  doc: 'Output prefix (default: QuickProfile)'
  type: string?
  inputBinding:
    prefix: --output
- id: in_breadth_cut_off
  doc: "Minimum genome breadth to pull scaffolds (default:\n0.5)"
  type: double?
  inputBinding:
    prefix: --breadth_cutoff
- id: in_stringent_breadth_cut_off
  doc: "Minimum breadth to let scaffold into coverm raw\nresults (done with greater\
    \ than; NOT greater than or\nequal to) (default: 0.0)\n"
  type: double?
  inputBinding:
    prefix: --stringent_breadth_cutoff
- id: in_bam
  doc: Sorted .bam file
  type: string
  inputBinding:
    position: 0
- id: in_fast_a
  doc: Fasta file the bam is mapped to
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/instrain:1.5.3--py_0
cwlVersion: v1.1
baseCommand:
- inStrain
- quick_profile
