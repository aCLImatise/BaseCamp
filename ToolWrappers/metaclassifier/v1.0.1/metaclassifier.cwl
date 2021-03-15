class: CommandLineTool
id: metaclassifier.cwl
inputs:
- id: in_output_dir
  doc: "Specify output directory name, otherwise it will automatically be created\
    \ using the\ninput sample table file name"
  type: File?
  inputBinding:
    prefix: --output_dir
- id: in_frag_type
  doc: "Specify the sequence fragment type in the input sample file, available options\
    \ are:\npaired: single-end read fragments (default)\nsingle: paired-end read fragments"
  type: string?
  inputBinding:
    prefix: --frag_type
- id: in_merge
  doc: 'Merge overlapping paired-end reads (default: False)'
  type: boolean?
  inputBinding:
    prefix: --merge
- id: in_tax_class
  doc: 'Taxonomy class for quantify taxon level marker read abundance (default: genus)'
  type: string?
  inputBinding:
    prefix: --tax_class
- id: in_min_proportion
  doc: "Minimum taxon read proportion allowed to retain a sample taxon, allowed proportion,\n\
    ranges from 0.00 to 0.01 (default = 0.00)"
  type: long?
  inputBinding:
    prefix: --min_proportion
- id: in_max_markers
  doc: Maximum missing markers allowed to retain a sample taxon (default = 0)
  type: long?
  inputBinding:
    prefix: --max_markers
- id: in_pear_merger
  doc: "Path to PEAR, the paired-end read merger if not in environmental variables\
    \ (ENV)\n(default: read from ENV)"
  type: File?
  inputBinding:
    prefix: --pear_merger
- id: in_seq_tk_converter
  doc: "Path to seqtk, the sequence processing tool if not in environmental variables\
    \ (ENV)\n(default: read from ENV)"
  type: File?
  inputBinding:
    prefix: --seqtk_converter
- id: in_v_search_aligner
  doc: "Path to VSEARCH, the sequence analysis tool if not in environmental variables\
    \ (ENV)\n(default: read from ENV)"
  type: File?
  inputBinding:
    prefix: --vsearch_aligner
- id: in_threads
  doc: 'Specify the number of threads to use (default: 2)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_sample_file
  doc: "Input tab-delimited file specifying sample names, file names for forward paired-end\n\
    reads, and file names for reverse paired-end (file path if not in working directory)\n\
    The second file not required for single-end frangments"
  type: string
  inputBinding:
    position: 0
- id: in_db_dir
  doc: "Input marker database directory with sequence fasta and corresponding taxonomy\
    \ lineage\nfiles for each marker"
  type: string
  inputBinding:
    position: 1
- id: in_config_file
  doc: "Input tab-delimited file specifying marker name, and its corresponding VSEARCH's\n\
    usearch_global function minimum query coverage (i.e. 0.8 for 80%) and minimun\
    \ sequence\nidentity (i.e. 0.95 for 95%) for each search marker (provide the file\
    \ path if not in\nif the VSEARCH settings configuration is not in working directory)"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metaclassifier:v1.0.1--py_0
cwlVersion: v1.1
baseCommand:
- metaclassifier
