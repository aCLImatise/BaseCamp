class: CommandLineTool
id: ppanggolin_write.cwl
inputs:
- id: in_pan_genome
  doc: 'The pangenome .h5 file (default: None)'
  type: File?
  inputBinding:
    prefix: --pangenome
- id: in_output
  doc: "Output directory where the file(s) will be written\n(default: None)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_soft_core
  doc: 'Soft core threshold to use (default: 0.95)'
  type: double?
  inputBinding:
    prefix: --soft_core
- id: in_dup_margin
  doc: "minimum ratio of organisms in which the family must\nhave multiple genes for\
    \ it to be considered\n'duplicated' (default: 0.05)"
  type: double?
  inputBinding:
    prefix: --dup_margin
- id: in_gex_f
  doc: "write a gexf file with all the annotations and all the\ngenes of each gene\
    \ family (default: False)"
  type: boolean?
  inputBinding:
    prefix: --gexf
- id: in_light_gex_f
  doc: "write a gexf file with the gene families and basic\ninformations about them\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --light_gexf
- id: in_csv
  doc: "csv file format as used by Roary, among others. The\nalternative gene ID will\
    \ be the partition, if there is\none (default: False)"
  type: boolean?
  inputBinding:
    prefix: --csv
- id: in_r_tab
  doc: "tabular file for the gene binary presence absence\nmatrix (default: False)"
  type: boolean?
  inputBinding:
    prefix: --Rtab
- id: in_projection
  doc: "a csv file for each organism providing informations on\nthe projection of\
    \ the graph on the organism (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --projection
- id: in_stats
  doc: "tsv files with some statistics for each organism and\nfor each gene family\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --stats
- id: in_partitions
  doc: "list of families belonging to each partition, with one\nfile per partitions\
    \ and one family per line (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --partitions
- id: in_compress
  doc: 'Compress the files in .gz (default: False)'
  type: boolean?
  inputBinding:
    prefix: --compress
- id: in_json
  doc: "Writes the graph in a json file format (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --json
- id: in_regions
  doc: "Write the RGP in a tab format, one file per genome\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --regions
- id: in_spots
  doc: "Write spot summary and a list of all rgp in each spot\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --spots
- id: in_borders
  doc: 'List all borders of each spot (default: False)'
  type: boolean?
  inputBinding:
    prefix: --borders
- id: in_families_tsv
  doc: "Write a tsv file providing the association between\ngenes and gene families\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --families_tsv
- id: in_tmpdir
  doc: 'directory for storing temporary files (default: /tmp)'
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_verbose
  doc: "Indicate verbose level (0 for warning and errors only,\n1 for info, 2 for\
    \ debug) (default: 1)"
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_log
  doc: 'log output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: --log
- id: in_disable_prog_bar
  doc: 'disables the progress bars (default: False)'
  type: boolean?
  inputBinding:
    prefix: --disable_prog_bar
- id: in_cpu
  doc: 'Number of available cpus (default: 1)'
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_force
  doc: "Force writing in output directory and in pangenome\noutput file. (default:\
    \ False)\n"
  type: File?
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output directory where the file(s) will be written\n(default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_log
  doc: 'log output file (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_log)
- id: out_force
  doc: "Force writing in output directory and in pangenome\noutput file. (default:\
    \ False)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ppanggolin:1.1.131--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- ppanggolin
- write
