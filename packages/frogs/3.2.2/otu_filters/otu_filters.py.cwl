class: CommandLineTool
id: otu_filters.py.cwl
inputs:
- id: in_nb_cpus
  doc: 'The maximum number of CPUs used. [Default: 1]'
  type: long?
  inputBinding:
    prefix: --nb-cpus
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_nb_biggest_otu
  doc: Number of most abundant OTUs you want to keep.
  type: long?
  inputBinding:
    prefix: --nb-biggest-otu
- id: in_min_sample_presence
  doc: Keep OTU present in at least this number of samples.
  type: long?
  inputBinding:
    prefix: --min-sample-presence
- id: in_min_abundance
  doc: "Minimum percentage/number of sequences, comparing to\nthe total number of\
    \ sequences, of an OTU (between 0\nand 1 if percentage desired)."
  type: long?
  inputBinding:
    prefix: --min-abundance
- id: in_input_biom
  doc: 'The input BIOM file. (format: BIOM)'
  type: File?
  inputBinding:
    prefix: --input-biom
- id: in_input_fast_a
  doc: 'The input FASTA file. (format: FASTA)'
  type: File?
  inputBinding:
    prefix: --input-fasta
- id: in_contaminant
  doc: "Use this databank to filter sequence before\naffiliation. (format: FASTA)"
  type: string?
  inputBinding:
    prefix: --contaminant
- id: in_output_biom
  doc: "The BIOM file output. (format: BIOM) [Default:\notu_filters_abundance.biom]"
  type: File?
  inputBinding:
    prefix: --output-biom
- id: in_output_fast_a
  doc: "The FASTA output file. (format: FASTA) [Default:\notu_filters.fasta]"
  type: File?
  inputBinding:
    prefix: --output-fasta
- id: in_summary
  doc: "The HTML file containing the graphs. [Default:\notu_filters.html]"
  type: File?
  inputBinding:
    prefix: --summary
- id: in_excluded
  doc: "The TSV file that summarizes all the clusters\ndiscarded. (format: TSV) [Default:\n\
    otu_filters_excluded.tsv]"
  type: File?
  inputBinding:
    prefix: --excluded
- id: in_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_biom
  doc: "The BIOM file output. (format: BIOM) [Default:\notu_filters_abundance.biom]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_biom)
- id: out_output_fast_a
  doc: "The FASTA output file. (format: FASTA) [Default:\notu_filters.fasta]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fast_a)
- id: out_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/frogs:3.2.2--py37_0
cwlVersion: v1.1
baseCommand:
- otu_filters.py
