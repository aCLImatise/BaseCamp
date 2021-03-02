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
  doc: Preformated reference file.
  type: File?
  inputBinding:
    prefix: --reference
- id: in_input_biom
  doc: "Abundance table from the clusterisation program\n(format: BIOM)."
  type: string?
  inputBinding:
    prefix: --input-biom
- id: in_input_fast_a
  doc: "Fasta file of OTU's seed (format: fasta)."
  type: File?
  inputBinding:
    prefix: --input-fasta
- id: in_output_biom
  doc: "File which add affiliation annotations from\nblast/needleall and/or RDPtools\
    \ to the abundance\ntable. [Default: affiliation.biom]"
  type: File?
  inputBinding:
    prefix: --output-biom
- id: in_summary
  doc: "Report of the results (format: HTML). [Default:\nsummary.html]"
  type: string?
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
hints: []
cwlVersion: v1.1
baseCommand:
- affiliation_OTU.py
