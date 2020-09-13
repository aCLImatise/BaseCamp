class: CommandLineTool
id: ../../../msgf2pin.cwl
inputs:
- id: in_help
  doc: Display this message
  type: boolean
  inputBinding:
    prefix: --help
- id: in_o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
- id: in_output_tab
  doc: save output in a tab delimited file
  type: File
  inputBinding:
    prefix: --outputTab
- id: in_var_3
  doc: ''
  type: File
  inputBinding:
    prefix: -k
- id: in_output_xml
  doc: save output in the (deprecated) pin-xml format file
  type: File
  inputBinding:
    prefix: --outputXML
- id: in_var_5
  doc: ''
  type: boolean
  inputBinding:
    prefix: -K
- id: in_output_xml_stdout
  doc: output to stdout in the (deprecated) pin-xml format
  type: boolean
  inputBinding:
    prefix: --outputXMLstdout
- id: in_matches
  doc: "Maximal number of matches to take in consideration\nper spectrum"
  type: long
  inputBinding:
    prefix: --matches
- id: in_v
  doc: ''
  type: string
  inputBinding:
    prefix: -v
- id: in_verbose
  doc: "Set verbosity of output: 0=no processing info,\n5=all, default is 2"
  type: long
  inputBinding:
    prefix: --verbose
- id: in_a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -a
- id: in_aa_freq
  doc: Calculate amino acid frequency features
  type: boolean
  inputBinding:
    prefix: --aa-freq
- id: in_b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: in_ptm
  doc: Calculate feature for number of post-translational
  type: boolean
  inputBinding:
    prefix: --PTM
- id: in_enzyme
  doc: "Type of enzyme\n\"no_enzyme\",\"elastase\",\"pepsin\",\"proteinasek\",\"therm\n\
    olysin\",\"chymotrypsin\",\"lys-n\",\"lys-c\",\"arg-c\",\"asp-\nn\",\"glu-c\"\
    ,\"trypsin\" default=\"trypsin\""
  type: boolean
  inputBinding:
    prefix: --enzyme
- id: in_id_with_exp_mass
  doc: "Include experimental mass in PSMid for easier\ncorrelation with search engine\
    \ results."
  type: boolean
  inputBinding:
    prefix: --id-with-exp-mass
- id: in_n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -N
- id: in_png_as_ef
  doc: "Calculate feature based on N-linked glycosylation\npattern resulting from\
    \ a PNGaseF treatment.\n(N[*].[ST])"
  type: boolean
  inputBinding:
    prefix: --PNGaseF
- id: in_two
  doc: ''
  type: File
  inputBinding:
    prefix: '-2'
- id: in_ms_two_file
  doc: "File containing spectra and retention time. The file\ncould be in mzXML, MS2\
    \ or compressed MS2 file."
  type: File
  inputBinding:
    prefix: --ms2-file
- id: in_m
  doc: ''
  type: boolean
  inputBinding:
    prefix: -M
- id: in_isotope
  doc: "Mass difference calculated to closest isotope mass\nrather than to the average\
    \ mass."
  type: boolean
  inputBinding:
    prefix: --isotope
- id: in_var_22
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_psm_annotation
  doc: "An anotation scheme used to convert the psms from\nthe search. An example\
    \ if Q# was used to describe\npyro-glu formation (UNIMOD:28), and S* and T* was\n\
    used to describe phosphorylation (UNIMOD:21), we\nwould use the option -p *:21:#:28"
  type: long
  inputBinding:
    prefix: --psm-annotation
- id: in_var_24
  doc: ''
  type: boolean
  inputBinding:
    prefix: -P
- id: in_pattern
  doc: "Pattern used to identify the decoy PSMs. Default =\n\"random\"."
  type: boolean
  inputBinding:
    prefix: --pattern
- id: in_f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -F
- id: in_databases
  doc: "Link to the fasta database/s used in the search\nagainst the spectra file/s\n\
    <target.fasta,[decoy.fasta]> (Including this option\nwill add the proteins to\
    \ the generated pin file)."
  type: boolean
  inputBinding:
    prefix: --databases
- id: in_c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: in_cleavages
  doc: "Number of allowed miss cleavages used in the search\nengine (default 0)(Only\
    \ valid when using option -F)."
  type: boolean
  inputBinding:
    prefix: --cleavages
- id: in_l
  doc: ''
  type: boolean
  inputBinding:
    prefix: -l
- id: in_min_length
  doc: "Minimum peptide length allowed used in the search\nengine (default 6)(Only\
    \ valid when using option -F)."
  type: boolean
  inputBinding:
    prefix: --min-length
- id: in_t
  doc: ''
  type: boolean
  inputBinding:
    prefix: -t
- id: in_max_length
  doc: "Maximum peptide length allowed used in the search\nengine (default 40)(Only\
    \ valid when using option\n-F)."
  type: boolean
  inputBinding:
    prefix: --max-length
- id: in_w
  doc: ''
  type: boolean
  inputBinding:
    prefix: -w
- id: in_min_mass
  doc: "Minimum peptide mass allowed used in the search\nengine (default 400)(Only\
    \ valid when using option\n-F)."
  type: boolean
  inputBinding:
    prefix: --min-mass
- id: in_x
  doc: ''
  type: boolean
  inputBinding:
    prefix: -x
- id: in_max_mass
  doc: "Maximum peptide mass allowed used in the search\nengine (default 6000)(Only\
    \ valid when using option\n-F).\n"
  type: boolean
  inputBinding:
    prefix: --max-mass
- id: in_file
  doc: -m <number>
  type: File
  inputBinding:
    position: 0
- id: in_modifications
  doc: -e
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_tab
  doc: save output in a tab delimited file
  type: File
  outputBinding:
    glob: $(inputs.in_output_tab)
- id: out_output_xml
  doc: save output in the (deprecated) pin-xml format file
  type: File
  outputBinding:
    glob: $(inputs.in_output_xml)
cwlVersion: v1.1
baseCommand:
- msgf2pin
