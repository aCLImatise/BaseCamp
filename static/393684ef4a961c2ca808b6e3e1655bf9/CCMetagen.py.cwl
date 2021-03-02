class: CommandLineTool
id: CCMetagen.py.cwl
inputs:
- id: in_mode
  doc: "what do you want CCMetagen to do? Valid options are\n'visual', 'text' or 'both':\
    \ text: parses kma, filters\nbased on quality and output a text file with taxonomic\n\
    information and detailed mapping information visual:\nparses kma, filters based\
    \ on quality and output a\nsimplified text file and a krona html file for\nvisualization\
    \ both: outputs both text and visual file\nformats. Default = both"
  type: File?
  inputBinding:
    prefix: --mode
- id: in_res_fp
  doc: Path to the KMA result (.res file)
  type: File?
  inputBinding:
    prefix: --res_fp
- id: in_output_fp
  doc: Path to the output file. Default = CCMetagen_out
  type: File?
  inputBinding:
    prefix: --output_fp
- id: in_reference_database
  doc: "Which reference database was used. Options: UNITE,\nRefSeq or nt. Default\
    \ = nt"
  type: string?
  inputBinding:
    prefix: --reference_database
- id: in_extended_output_file
  doc: "Produce an extended output file that includes the\npercentage of classified\
    \ reads. Options: y or n. To\nuse this featire, you need to generate the mapstat\n\
    file when required unning KMA (use flag -ef), and use\nit as input in CCMetagen\
    \ (flag --mapstat). Default = n"
  type: File?
  inputBinding:
    prefix: --extended_output_file
- id: in_depth_unit
  doc: "Desired unit for Depth(abundance) measurements.\nDefault = kma (KMA default\
    \ depth, which is the number\nof nucleotides overlapping each template, divided\
    \ by\nthe lengh of the template). Alternatively, you can\nhave abundance calculated\
    \ in Reads Per Million (RPM,\noption 'rpm'), in number of nucleotides overlaping\
    \ the\ntemplate (option 'nc') or in number of fragments (i.e.\nPE reads, option\
    \ 'fr'). If you use the 'nc', 'rpm' or\n'fr' options, remember to change the default\
    \ --depth\nparameter accordingly. Valid options are nc, rpm, fr\nand kma"
  type: long?
  inputBinding:
    prefix: --depth_unit
- id: in_map_stat
  doc: "Path to the mapstat file produced with KMA when using\nthe -ef flag (.mapstat).\
    \ Required when calculating\nabundances in RPM or in number of fragments, or when\n\
    producing the extended_output_file"
  type: long?
  inputBinding:
    prefix: --mapstat
- id: in_depth
  doc: "minimum sequencing depth. Default = 0.2. The unit\ncorresponds to the one\
    \ used with --depth_unit If you\nuse --depth_unit different from the default,\
    \ change\nthis accordingly."
  type: double?
  inputBinding:
    prefix: --depth
- id: in_coverage
  doc: "Minimum coverage. Default = 20 (i.e. 20% of the\nreference sequence)"
  type: long?
  inputBinding:
    prefix: --coverage
- id: in_query_identity
  doc: Minimum query identity (Phylum level). Default = 50
  type: long?
  inputBinding:
    prefix: --query_identity
- id: in_p_value
  doc: Minimum p-value. Default = 0.05.
  type: double?
  inputBinding:
    prefix: --pvalue
- id: in_species_threshold
  doc: Species-level similarity threshold. Default = 98.41
  type: double?
  inputBinding:
    prefix: --species_threshold
- id: in_genus_threshold
  doc: Genus-level similarity threshold. Default = 96.31
  type: double?
  inputBinding:
    prefix: --genus_threshold
- id: in_family_threshold
  doc: Family-level similarity threshold. Default = 88.51
  type: double?
  inputBinding:
    prefix: --family_threshold
- id: in_order_threshold
  doc: Order-level similarity threshold. Default = 81.21
  type: double?
  inputBinding:
    prefix: --order_threshold
- id: in_class_threshold
  doc: Class-level similarity threshold. Default = 80.91
  type: double?
  inputBinding:
    prefix: --class_threshold
- id: in_phylum_threshold
  doc: "Phylum-level similarity threshold. Default = 0 - not\napplied"
  type: long?
  inputBinding:
    prefix: --phylum_threshold
- id: in_turn_off_sim_thresholds
  doc: "Turns simularity-based filtering off. Options = y or\nn. Default = n"
  type: string?
  inputBinding:
    prefix: --turn_off_sim_thresholds
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_mode
  doc: "what do you want CCMetagen to do? Valid options are\n'visual', 'text' or 'both':\
    \ text: parses kma, filters\nbased on quality and output a text file with taxonomic\n\
    information and detailed mapping information visual:\nparses kma, filters based\
    \ on quality and output a\nsimplified text file and a krona html file for\nvisualization\
    \ both: outputs both text and visual file\nformats. Default = both"
  type: File?
  outputBinding:
    glob: $(inputs.in_mode)
- id: out_output_fp
  doc: Path to the output file. Default = CCMetagen_out
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fp)
- id: out_extended_output_file
  doc: "Produce an extended output file that includes the\npercentage of classified\
    \ reads. Options: y or n. To\nuse this featire, you need to generate the mapstat\n\
    file when required unning KMA (use flag -ef), and use\nit as input in CCMetagen\
    \ (flag --mapstat). Default = n"
  type: File?
  outputBinding:
    glob: $(inputs.in_extended_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ccmetagen:1.2.5--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- CCMetagen.py
