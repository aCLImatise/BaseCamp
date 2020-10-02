class: CommandLineTool
id: rsat_random_genes.cwl
inputs:
- id: in_help
  doc: (must be first argument) display options
  type: boolean
  inputBinding:
    prefix: -help
- id: in_verbose
  doc: verbose
  type: boolean
  inputBinding:
    prefix: -v
- id: in_specified_standard_output
  doc: "if not specified, the standard output is used.\nThis allows to place the command\
    \ within a pipe."
  type: File
  inputBinding:
    prefix: -o
- id: in_org
  doc: organism
  type: boolean
  inputBinding:
    prefix: -org
- id: in_features
  doc: "alternate feature table. This option allows to speify\nan alternate file where\
    \ the ORF locations are found.\nSee below for a description of the feature file\
    \ format."
  type: boolean
  inputBinding:
    prefix: -features
- id: in_feat_type
  doc: "Feature type.\nSupported: gene,mRNA,tRNA,rRNA,scRNA,misc_RNA,CDS,start_codon,stop_codon,exon"
  type: boolean
  inputBinding:
    prefix: -feattype
- id: in_replace
  doc: "random selection with replacement\n(a same ORF might appear several times\
    \ in the output)"
  type: boolean
  inputBinding:
    prefix: -replace
- id: in_number_random_genes
  doc: '#    number of random genes to return'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_groups_number_random
  doc: '#    groups (number of random groups).'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_pairs
  doc: "#\nnumber of random pairs of genes to return. Each row of\nthe output contains\
    \ two genes, separated by a tab."
  type: boolean
  inputBinding:
    prefix: -pairs
- id: in_fam
  doc: "file\nA 2-column file containing gene names in the first\ncolumn and group\
    \ (cluster) name in the second column.\n(same format as for multiple-group-analysis).\n\
    The program returns a file of the same size as the\ninput, where input genes have\
    \ been substituted by\nrandom genes."
  type: long
  inputBinding:
    prefix: -fam
- id: in_repeat
  doc: "#\n(requires the option -fam)\nNumber of repetitions for each input group.\n\
    This option generates, for each input group, R output\nrandom gene selections\
    \ of the same size."
  type: boolean
  inputBinding:
    prefix: -repeat
- id: in_random_genes
  doc: 2002 by Jacques van Helden (Jacques.van-Helden@univ-amu.fr)
  type: string
  inputBinding:
    position: 0
- id: in_organism_dot
  doc: "There are several modes of utilization.\n(1) -n       returns random genes.\n\
    (2) -g       groups. Create a group file with g groups of n\ngenes (n must be\
    \ specified)\n(3) -pairs   returns random pairs of genes.\n(4) -fam     takes\
    \ a group file (see multiple-group-analysis)\nas input, and return another group\
    \ file with\nthe same number of groups, the same number\nof random genes per group\
    \ as in the input\nfile. This allows to deal with groups of\ndifferent sizes in\
    \ the same file, and to\nperform negative controls in exactly the same\nconditions\
    \ as the test."
  type: string
  inputBinding:
    position: 0
- id: in_util
  doc: USAGE
  type: string
  inputBinding:
    position: 0
- id: in_families_dot
  doc: It is a text file containing 2 columns separated by
  type: string
  inputBinding:
    position: 0
- id: in_example
  doc: ; genes responding to Phosphate stress
  type: string
  inputBinding:
    position: 0
- id: in_pho_five
  doc: PHO
  type: long
  inputBinding:
    position: 1
- id: in_pho_eight
  doc: PHO
  type: long
  inputBinding:
    position: 2
- id: in_dal_five
  doc: NIT
  type: long
  inputBinding:
    position: 0
- id: in_gap_one
  doc: NIT
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specified_standard_output
  doc: "if not specified, the standard output is used.\nThis allows to place the command\
    \ within a pipe."
  type: File
  outputBinding:
    glob: $(inputs.in_specified_standard_output)
cwlVersion: v1.1
baseCommand:
- rsat
- random-genes
