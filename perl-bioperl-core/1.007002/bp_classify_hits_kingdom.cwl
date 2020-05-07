class: CommandLineTool
id: bp_classify_hits_kingdom.pl.cwl
inputs:
- id: t
  doc: /--taxonomy Directory where the taxonomy .dmp files are (from NCBI)
  type: boolean
  inputBinding:
    prefix: -t
- id: g
  doc: /--gi       File path of the gi2taxid file (gi_taxid_prot.dmp for proteins
    or gi_taxid_nucl.dmp if the search was against a nucleid database)
  type: boolean
  inputBinding:
    prefix: -g
- id: i
  doc: /--in       The name of the tab delimited -m8/-m9 output files to process
  type: boolean
  inputBinding:
    prefix: -i
- id: e
  doc: /--evalue   Provide an E-value cutoff for hits to be considered
  type: boolean
  inputBinding:
    prefix: -e
- id: z
  doc: /--zcat     Path to the 'zcat' executable, can also be 'gunzip -c' if no zcat
    on your system.
  type: boolean
  inputBinding:
    prefix: -z
- id: v
  doc: /--verbose  To turn on verbose messages
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_classify_hits_kingdom.pl
