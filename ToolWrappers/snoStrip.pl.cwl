class: CommandLineTool
id: snoStrip.pl.cwl
inputs:
- id: in_dir_output_directory
  doc: "|dir             Output directory where all retrieved information will\nbe\
    \ stored.\n[REQUIRED]"
  type: Directory
  inputBinding:
    prefix: -d
- id: in_kingdom_specify_kingdom
  doc: "|kingdom         Specify the kingdom which shall be analyzed.\n'pro' ... Protostomia\n\
    'deu' ... Deuterostomia\n'fun' ... Fungi\n'pla' ... Plants\n[REQUIRED]"
  type: boolean
  inputBinding:
    prefix: -k
- id: in_info_file_containing
  doc: "|info            File containing information of the organisms to be analyzed\n\
    file format: genome  Genus epithet   3-letter abbreviation (tab-separated)\nEspecially\
    \ useful in case more than one organism shall be searched."
  type: boolean
  inputBinding:
    prefix: -i
- id: in_genome_genome_source
  doc: '|genome          Genome source to search for potential snoRNAs.'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_name_name_organism
  doc: "|name            Name of the organism: 'Genus epithet'."
  type: boolean
  inputBinding:
    prefix: -n
- id: in_infernal_incorporate_infernal
  doc: "|infernal        Incorporate infernal in the homology-based\nsearch procedure."
  type: boolean
  inputBinding:
    prefix: -j
- id: in_quiet_suppress_unnecessary
  doc: '|quiet           Suppress unnecessary output.'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_force_force_search
  doc: "|force           Force to search for novel snoRNA candidates in every\norganism,\
    \ even though there are already species-specific\nsequences in the current family."
  type: boolean
  inputBinding:
    prefix: -f
- id: in_targets
  doc: "Enable target prediction and make use of the target RNAs\nthat were shipped\
    \ with snoStrip.\nLocation: /"
  type: boolean
  inputBinding:
    prefix: --targets
- id: in_sequences_directory_targetrnas
  doc: '|sequences       Directory of targetRNAs.'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_alignments_directory_targetrna
  doc: '|alignments      Directory of targetRNA alignments.'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_profiles_directory_targetrna
  doc: '|profiles        Directory of targetRNA profiles.'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_perl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dir_output_directory
  doc: "|dir             Output directory where all retrieved information will\nbe\
    \ stored.\n[REQUIRED]"
  type: Directory
  outputBinding:
    glob: $(inputs.in_dir_output_directory)
cwlVersion: v1.1
baseCommand:
- snoStrip.pl
