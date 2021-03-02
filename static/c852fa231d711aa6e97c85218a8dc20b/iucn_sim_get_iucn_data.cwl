class: CommandLineTool
id: iucn_sim_get_iucn_data.cwl
inputs:
- id: in_reference_group
  doc: "Name of taxonomic group (or list of groups) to be used\nfor calculating status\
    \ transition rates (e.g.\n'Mammalia' or 'Rodentia,Chiroptera'). Alternatively\n\
    provide path to text file containing a list of species\nnames, compatible with\
    \ IUCN taxonomy (>1000 species\nrecommended). If none provided, the target species\n\
    list ('--target_species_list') will be used for\ncalculating transition rates.\
    \ Tip: Use precompiled\ngroup for faster processing and in case you don't have\n\
    an IUCN key (see available groups at github.com/tobias\nhofmann88/iucn_extinction_simulator/data/precompiled/i\n\
    ucn_history/ or request specific groups to be added:\ntobias.andermann@bioenv.gu.se)"
  type: File?
  inputBinding:
    prefix: --reference_group
- id: in_reference_rank
  doc: "Provide the taxonomic rank of the provided reference\ngroup(s). E.g. in case\
    \ of 'Mammalia', provide 'class'\nfor this flag, in case of 'Rodentia,Chiroptera'\n\
    provide 'order,order'. Has to be at least 'Family' or\nabove. This flag is not\
    \ needed if species list is\nprovided as reference_group or if reference group\
    \ is\nalready pre-compiled."
  type: string?
  inputBinding:
    prefix: --reference_rank
- id: in_target_species_list
  doc: "File containing the list of species that you want to\nsimulate future extinctions\
    \ for. In case you have\ngeneration length (GL) data available, provide the\n\
    file containing the GL data for each species here\n(including the species names).\
    \ This function will\noutput one central data file for downstream processing\n\
    that contains the current status information as well\nas the GL data (if available)\
    \ for each species. You\ncan provide multiple GL values for each species, e.g.\n\
    several randomely sampled values from the GL\nuncertainty interval of a given\
    \ species. Set this flag\nto 0 if you want to supress downloading of current\n\
    status information, e.g. if you already have current\nstatus information for your\
    \ species (may be necessary\nif you don't have a valid IUCN key). Set to 1 if\
    \ you\nwant to use the same taxa that are present in the\nreference group. See\
    \ https://github.com/tobiashofmann8\n8/iucn_extinction_simulator/data/precompiled/\
    \ for\nexamples of the format of GL data input files and the\nformat of the output\
    \ file conataining current status\ninformation."
  type: File?
  inputBinding:
    prefix: --target_species_list
- id: in_outdir
  doc: Provide path to outdir where results will be saved.
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_iucn_key
  doc: "Provide your IUCN API key (see\nhttps://apiv3.iucnredlist.org/api/v3/token)\
    \ for\ndownloading IUCN history of your provided reference\ngroup. Not required\
    \ if using precompiled reference\ngroup and a manually compiled current status\
    \ list (to\nbe used in the 'transition_rates' function). Also not\nrequired if\
    \ all species in your target_species_list\nare present in the precompiled reference_group)."
  type: long?
  inputBinding:
    prefix: --iucn_key
- id: in_no_online_sync
  doc: "Turn off the online-search for precompiled IUCN\nhistory files for your reference\
    \ group.\n"
  type: boolean?
  inputBinding:
    prefix: --no_online_sync
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- iucn_sim
- get_iucn_data
