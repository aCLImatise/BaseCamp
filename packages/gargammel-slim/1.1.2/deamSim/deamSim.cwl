class: CommandLineTool
id: deamSim.cwl
inputs:
- id: in_read_bam_write
  doc: '[BAM out]                       Read BAM and write output as a BAM (default:
    fasta)'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_produce_uncompressed_bam
  doc: Produce uncompressed BAM (good for unix pipe)
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_write_fasta_output
  doc: '[fasta out]                     Write fasta output as a zipped fasta'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_name
  doc: Put a tag in the read name with deam bases (default not on/not used)
  type: boolean?
  inputBinding:
    prefix: -name
- id: in_verbose_mode
  doc: verbose mode
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_last
  doc: "If matfile is used, do not use the substitution rates of the\nlast row over\
    \ the rest of the molecule (default: no data = use last row)"
  type: boolean?
  inputBinding:
    prefix: -last
- id: in_map_damage
  doc: "[mis.txt] [protocol]        Read the miscorporation file [mis.txt]\nproduced\
    \ by mapDamage\n[protocol] can be either \"single\" or \"double\" (without quotes)\n\
    Single strand will have C->T damage on both ends\nDouble strand will have and\
    \ C->T at the 5' end and G->A damage at the 3' end"
  type: boolean?
  inputBinding:
    prefix: -mapdamage
- id: in_mat_file
  doc: "[matrix file prefix]          Read the matrix file of substitutions instead\
    \ of the default\nProvide the prefix only, both files must end with\n5.dat and\
    \ 3.dat"
  type: boolean?
  inputBinding:
    prefix: -matfile
- id: in_mat_file_non_meth
  doc: "[matrix file prefix]   Read the matrix file of substitutions for non-methylated\
    \ Cs\nProvide the prefix only, both files must end with\n5.dat and 3.dat"
  type: boolean?
  inputBinding:
    prefix: -matfilenonmeth
- id: in_mat_file_meth
  doc: "[matrix file prefix]      Read the matrix file of substitutions for methylated\
    \ Cs\nProvide the prefix only, both files must end with\n5.dat and 3.dat"
  type: boolean?
  inputBinding:
    prefix: -matfilemeth
- id: in_mat
  doc: "[ancient DNA matrix]          For default matrices, use either \"single\"\
    \ or \"double\" (without quotes)\nSingle strand will have C->T damage on both\
    \ ends\nDouble strand will have and C->T at the 5p end and G->A damage at the\
    \ 3p end"
  type: boolean?
  inputBinding:
    prefix: -mat
- id: in_damage
  doc: "[v,l,d,s]                   For the Briggs et al. 2007 model\nThe parameters\
    \ must be comma-separated e.g.: -damage 0.03,0.4,0.01,0.7\nv: nick frequency\n\
    l: length of overhanging ends (geometric parameter)\nd: prob. of deamination of\
    \ Cs in double-stranded parts\ns: prob. of deamination of Cs in single-stranded\
    \ parts\n"
  type: boolean?
  inputBinding:
    prefix: -damage
- id: in_double
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_i
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mandatory
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_single
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_specify
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_adds
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ancient
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_fast_a
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_if
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_matrix
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_mis_dot_txt
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_some
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dna
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_deamination
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_either
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_or
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_program
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_protocol
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_strand
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_bam
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_read
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_according
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_prefix
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_reads
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_will
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_var_40
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_are
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_have
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_c
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_found
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_mis_corporation
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_certain
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 5
- id: in_matrices
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_model
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_models
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_substitutions
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_var_58
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_instead
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_methylated
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_non_methylated
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_cs
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: in_default
  doc: ''
  type: string
  inputBinding:
    position: 12
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gargammel-slim:1.1.2--h68ad25a_0
cwlVersion: v1.1
baseCommand:
- deamSim
