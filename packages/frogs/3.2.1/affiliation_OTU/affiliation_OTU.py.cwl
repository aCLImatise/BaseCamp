class: CommandLineTool
id: affiliation_OTU.py.cwl
inputs:
- id: in_nb_cpus
  doc: 'The maximum number of CPUs used. [Default: 1]'
  type: long?
  inputBinding:
    prefix: --nb-cpus
- id: in_java_mem
  doc: 'Java memory allocation in Go. [Default: 2]'
  type: long?
  inputBinding:
    prefix: --java-mem
- id: in_ordered_ranks_levels
  doc: "[TAXONOMY_RANKS [TAXONOMY_RANKS ...]], --taxonomy-ranks [TAXONOMY_RANKS [TAXONOMY_RANKS\
    \ ...]]\nThe ordered ranks levels present in the reference\ndatabank. [Default:\
    \ ['Domain', 'Phylum', 'Class',\n'Order', 'Family', 'Genus', 'Species']]"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_rdp
  doc: Use RDP classifier to affiliate OTU
  type: boolean?
  inputBinding:
    prefix: --rdp
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_reference
  doc: "Preformated reference file (format: blast-indexed\nFASTA)."
  type: File?
  inputBinding:
    prefix: --reference
- id: in_input_biom
  doc: 'BIOM file (format: BIOM).'
  type: File?
  inputBinding:
    prefix: --input-biom
- id: in_input_fast_a
  doc: "FASTA file of OTU's seed (format: FASTA)."
  type: File?
  inputBinding:
    prefix: --input-fasta
- id: in_output_biom
  doc: "BIOM file with added affiliation annotations from\nblast/needleall and/or\
    \ RDPtools. [Default:\naffiliation_abundance.biom]"
  type: File?
  inputBinding:
    prefix: --output-biom
- id: in_summary
  doc: "The HTML file containing the graphs. [Default:\naffiliation_OTU.html]"
  type: File?
  inputBinding:
    prefix: --summary
- id: in_log_file
  doc: "The list of commands executed.\n"
  type: File?
  inputBinding:
    prefix: --log-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/frogs:3.2.1--py37_0
cwlVersion: v1.1
baseCommand:
- affiliation_OTU.py
