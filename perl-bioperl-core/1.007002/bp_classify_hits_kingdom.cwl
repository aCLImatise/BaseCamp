class: CommandLineTool
id: ../../../bp_classify_hits_kingdom.pl.cwl
inputs:
- id: t_slash_taxonomy
  doc: where the taxonomy .dmp files are (from NCBI)
  type: Directory
  inputBinding:
    prefix: -t/--taxonomy
- id: g_slash_gi
  doc: File path of the gi2taxid file (gi_taxid_prot.dmp for proteins or gi_taxid_nucl.dmp
    if the search was against a nucleid database)
  type: boolean
  inputBinding:
    prefix: -g/--gi
- id: i_slash_in
  doc: The name of the tab delimited -m8/-m9 output files to process
  type: boolean
  inputBinding:
    prefix: -i/--in
- id: e_slash_evalue
  doc: Provide an E-value cutoff for hits to be considered
  type: boolean
  inputBinding:
    prefix: -e/--evalue
- id: z_slash_zcat
  doc: Path to the 'zcat' executable, can also be 'gunzip -c' if no zcat on your system.
  type: boolean
  inputBinding:
    prefix: -z/--zcat
- id: v_slash_verbose
  doc: To turn on verbose messages
  type: boolean
  inputBinding:
    prefix: -v/--verbose
- id: h_slash_help
  doc: Display this helpful information
  type: boolean
  inputBinding:
    prefix: -h/--help
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_classify_hits_kingdom.pl
