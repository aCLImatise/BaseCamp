class: CommandLineTool
id: trawler.cwl
inputs:
- id: in_sample
  doc: (FASTA format) better to be repeat-masked.
  type: boolean?
  inputBinding:
    prefix: -sample
- id: in_background
  doc: (FASTA format)
  type: boolean?
  inputBinding:
    prefix: -background
- id: in_occurrence
  doc: (optional) minimum occurrence in the sample sequences. [DEFAULT = 10]
  type: boolean?
  inputBinding:
    prefix: -occurrence
- id: in_m_length
  doc: (optional) minimum motif length. [DEFAULT = 6]
  type: boolean?
  inputBinding:
    prefix: -mlength
- id: in_wildcard
  doc: (optional) number of wild card in motifs. [DEFAULT = 2]
  type: boolean?
  inputBinding:
    prefix: -wildcard
- id: in_strand
  doc: (optional) single or double [DEFAULT = double]
  type: boolean?
  inputBinding:
    prefix: -strand
- id: in_overlap
  doc: (optional) in percentage. [DEFAULT = 70]
  type: boolean?
  inputBinding:
    prefix: -overlap
- id: in_motif_number
  doc: (optional) total number of motifs to be clustered. [DEFAULT = 200]
  type: boolean?
  inputBinding:
    prefix: -motif_number
- id: in_nb_of_cluster
  doc: (optional) fixed number of cluster. if this option is set to an integer (1
    and above), the k-mean clustering algorithm with fixed k will be used instead
    of the strongly connected component (SCC). [DEFAULT = NULL]
  type: boolean?
  inputBinding:
    prefix: -nb_of_cluster
- id: in_directory
  doc: (optional) output directory. [DEFAULT = "TRAWLER_HOME/myResults"]
  type: Directory?
  inputBinding:
    prefix: -directory
- id: in_dir_id
  doc: (optional) gives an id to the results directory. [DEFAULT = NULL]
  type: boolean?
  inputBinding:
    prefix: -dir_id
- id: in_xtra_len
  doc: (optional) add bases around the motifs for the logo. [DEFAULT = 0]
  type: boolean?
  inputBinding:
    prefix: -xtralen
- id: in_alignments
  doc: (optional) file containing the list of files containing the aligned sequences
    (see README file for more info) [DEFAULT = NULL]
  type: boolean?
  inputBinding:
    prefix: -alignments
- id: in_ref_species
  doc: (optional) name of the reference species [DEFAULT = NULL]
  type: boolean?
  inputBinding:
    prefix: -ref_species
- id: in_clustering
  doc: (optional) if 1 the program clusters the instances, if 0 no clustering. [DEFAULT
    = 1]
  type: boolean?
  inputBinding:
    prefix: -clustering
- id: in_web
  doc: (optional) if 1 the output will be a web page with all the information [DEFAULT
    = 1]
  type: boolean?
  inputBinding:
    prefix: -web
- id: in_if
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_optional
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_refer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_using
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_21
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_readme_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_formatted
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_more
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_information
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_on
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_var_31
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_format
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory
  doc: (optional) output directory. [DEFAULT = "TRAWLER_HOME/myResults"]
  type: Directory?
  outputBinding:
    glob: $(inputs.in_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- trawler
