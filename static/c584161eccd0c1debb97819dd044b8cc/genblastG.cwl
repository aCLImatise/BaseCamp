class: CommandLineTool
id: ../../../genblastG.cwl
inputs:
- id: search_program_used
  doc: Search program used to produce HSPs, can be either "blast" or "wublast", default
    is "blast", optional
  type: boolean
  inputBinding:
    prefix: -P
- id: specifies_program_option
  doc: 'specifies the program option of genBlast: genblasta or genblastg'
  type: boolean
  inputBinding:
    prefix: -p
- id: list_query_sequences
  doc: List of query sequences to blast, must be in fasta format, required
  type: boolean
  inputBinding:
    prefix: -q
- id: target_database_genomic
  doc: The target database of genomic sequences in fasta format, required
  type: boolean
  inputBinding:
    prefix: -t
- id: parameter_blast_evalue
  doc: 'parameter for blast: The e-value, [default: 1e-2], optional'
  type: boolean
  inputBinding:
    prefix: -e
- id: parameter_blast_perform
  doc: 'parameter for blast: Perform gapped alignment (T/F)  [default: F], optional'
  type: boolean
  inputBinding:
    prefix: -g
- id: parameter_filtering_tf
  doc: 'parameter for blast: Perform filtering (T/F) [default: F], optional'
  type: boolean
  inputBinding:
    prefix: -f
- id: parameter_blast_set
  doc: 'parameter for blast: Set word size, 0 means using blast default [default:
    0], optional'
  type: boolean
  inputBinding:
    prefix: -W
- id: parameter_genblast_optional
  doc: 'parameter for genBlast: weight of penalty for skipping HSPs, between 0 and
    1 [default: 0.5], optional'
  type: boolean
  inputBinding:
    prefix: -a
- id: parameter_genblast_maximum
  doc: 'parameter for genBlast: maximum allowed distance between HSPs  within the
    same gene, a non-negative integer [default: 100000], optional'
  type: boolean
  inputBinding:
    prefix: -d
- id: parameter_positive_optional
  doc: 'parameter for genBlast: number of ranks in the output, a positive integer,
    optional'
  type: boolean
  inputBinding:
    prefix: -r
- id: parameter_genblast_minimum
  doc: 'parameter for genBlast: minimum percentage of query gene  coverage in the
    output, between 0 and 1 (e.g. for 50% gene coverage, use "0.5"), optional'
  type: boolean
  inputBinding:
    prefix: -c
- id: parameter_number_optional
  doc: 'parameter for genBlast: minimum score of the HSP group in  the output, a real
    number, optional'
  type: boolean
  inputBinding:
    prefix: -s
- id: s_codon
  doc: number of base pairs to search for start codon within the region of HSP             group
    (inside the first HSP). If not specified, default is 15.
  type: string
  inputBinding:
    prefix: -scodon
- id: parameter_genblastg_minimum_intron
  doc: 'parameter for genBlastG: minimum intron length, optional. If not specified,
    the default value is 15.'
  type: boolean
  inputBinding:
    prefix: -i
- id: parameter_genblastg_minimum_internal
  doc: 'parameter for genBlastG: minimum internal exon length, optional. If not specified,
    default is 20.'
  type: boolean
  inputBinding:
    prefix: -x
- id: parameter_genblastg_maximum
  doc: 'parameter for genBlastG: maximum number of splice sites per region, optional.
    If not specified, default is 20.'
  type: boolean
  inputBinding:
    prefix: -n
- id: genblastg_region_version
  doc: 'genBlastG splice region algorithm version: 1 or 2. Optional. If not specified,
    default is 1'
  type: boolean
  inputBinding:
    prefix: -v
- id: parameter_region_optional
  doc: 'parameter for genBlastG splice region algorithm2: class threshold, optional.
    If not specified, default is 0.'
  type: boolean
  inputBinding:
    prefix: -j
- id: no_repair
  doc: turn on the no-repair option of genBlastG
  type: boolean
  inputBinding:
    prefix: -norepair
- id: re
  doc: 'parameter for genBlastG repair process: minimum length of missing query region
    for repairing head or tail exon, optional. If not specified, default is 1.'
  type: boolean
  inputBinding:
    prefix: -re
- id: rm
  doc: 'parameter for genBlastG repair process: minimum length of missing query region
    for repairing internal exon, optional. If not specified, default is 6.'
  type: boolean
  inputBinding:
    prefix: -rm
- id: rl
  doc: 'parameter for genBlastG repair process: length of DNA region before first
    exon or after last exon for searching additional alignments for repairing exons,
    optional. If not specified, default is 1000.'
  type: boolean
  inputBinding:
    prefix: -rl
- id: rs
  doc: 'parameter for genBlastG repair process: minimum initial score of alignment
    to be considered further (similar to BLAST), optional. If not specified, default
    is 41.'
  type: boolean
  inputBinding:
    prefix: -rs
- id: rd
  doc: 'parameter for genBlastG repair process: max allowed score reduction in extending
    initial alignment (similar to BLAST), optional. If not specified, default is 16.'
  type: boolean
  inputBinding:
    prefix: -rd
- id: output_filename_optional
  doc: output filename, optional. If not specified, the output will be the same as
    the query filename with ".gblast" extension.
  type: boolean
  inputBinding:
    prefix: -o
- id: gff
  doc: 'output options: turn on GFF output'
  type: boolean
  inputBinding:
    prefix: -gff
- id: cdna
  doc: 'output options: turn on cDNA output'
  type: boolean
  inputBinding:
    prefix: -cdna
- id: pro
  doc: 'output options: output protein sequence of the predicted gene'
  type: boolean
  inputBinding:
    prefix: -pro
- id: id
  doc: The GFF output user_id
  type: boolean
  inputBinding:
    prefix: -id
- id: turn_onscreen_output
  doc: Turn on the verbose on-screen output
  type: boolean
  inputBinding:
    prefix: -b
- id: pid
  doc: turn on final alignment PID computation (global alignment between predicted
    gene and query) in output.
  type: boolean
  inputBinding:
    prefix: -pid
outputs: []
cwlVersion: v1.1
baseCommand:
- genblastG
