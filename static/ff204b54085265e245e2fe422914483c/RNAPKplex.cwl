class: CommandLineTool
id: RNAPKplex.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean?
  inputBinding:
    prefix: --detailed-help
- id: in_cut_off
  doc: "Report only base pairs with an average probability\n> cutoff in the dot plot\n\
    (default=`0.01')"
  type: double?
  inputBinding:
    prefix: --cutoff
- id: in_temp
  doc: "Rescale energy parameters to a temperature of temp\nC. Default is 37C."
  type: long?
  inputBinding:
    prefix: --temp
- id: in_no_tetra
  doc: "Do not include special stabilizing energies for\ncertain tetra-loops. Mostly\
    \ for testing.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noTetra
- id: in_no_lp
  doc: "Produce structures without lonely pairs (helices\nof length 1).\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noLP
- id: in_no_gu
  doc: "Do not allow GU pairs\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noGU
- id: in_no_closing_gu
  doc: "Do not allow GU pairs at the end of helices\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noClosingGU
- id: in_noconv
  doc: "Do not automatically substitude nucleotide \"T\"\nwith \"U\"\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noconv
- id: in_nsp
  doc: "Allow other pairs in addition to the usual\nAU,GC,and GU pairs.\n(default=`empty')"
  type: string?
  inputBinding:
    prefix: --nsp
- id: in_energy_cut_off
  doc: "Energy cutoff or pseudoknot initiation cost.\nMinimum energy gain of a pseudoknot\
    \ interaction\nfor it to be returned. Pseudoknots with smaller\nenergy gains are\
    \ rejected.\n(default=`-8.10')"
  type: double?
  inputBinding:
    prefix: --energyCutoff
- id: in_param_file
  doc: "Read energy parameters from paramfile, instead of\nusing the default parameter\
    \ set."
  type: File?
  inputBinding:
    prefix: --paramFile
- id: in_verbose
  doc: "print verbose output\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_sub_opts
  doc: "print suboptimal structures whose energy\ndifference of the pseudoknot to\
    \ the optimum\npseudoknot is smaller than the given value.\n(default=`0.0')"
  type: double?
  inputBinding:
    prefix: --subopts
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0
cwlVersion: v1.1
baseCommand:
- RNAPKplex
