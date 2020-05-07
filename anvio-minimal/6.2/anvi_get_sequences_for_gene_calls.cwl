class: CommandLineTool
id: anvi_get_sequences_for_gene_calls.cwl
inputs:
- id: contigs_db
  doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  type: string
  inputBinding:
    prefix: --contigs-db
- id: gene_caller_ids
  doc: Gene caller ids. Multiple of them can be declared separated by a delimiter
    (the default is a comma). In anvi-gen-variability-profile, if you declare nothing
    you will get all genes matching your other filtering criteria. In other programs,
    you may get everything, nothing, or an error. It really depends on the situation.
    Fortunately, mistakes are cheap, so it's worth a try.
  type: string
  inputBinding:
    prefix: --gene-caller-ids
- id: delimiter
  doc: The delimiter to parse multiple input terms. The default is ','.
  type: string
  inputBinding:
    prefix: --delimiter
- id: report_extended_def_lines
  doc: When declared, the deflines in the resulting FASTA file will contain more information.
  type: boolean
  inputBinding:
    prefix: --report-extended-deflines
- id: wrap
  doc: When to wrap sequences when storing them in a FASTA file. The default is '120'.
    A value of '0' would be equivalent to 'do not wrap'.
  type: string
  inputBinding:
    prefix: --wrap
- id: export_gff3
  doc: If this is true, the output file will be in GFF3 format.
  type: boolean
  inputBinding:
    prefix: --export-gff3
- id: get_aa_sequences
  doc: Store amino acid sequences instead.
  type: boolean
  inputBinding:
    prefix: --get-aa-sequences
- id: genomes_storage
  doc: Anvi'o genomes storage file
  type: string
  inputBinding:
    prefix: --genomes-storage
- id: genome_names
  doc: Genome names to 'focus'. You can use this parameter to limit the genomes included
    in your analysis. You can provide these names as a comma-separated list of names,
    or you can put them in a file, where you have a single genome name in each line,
    and provide the file path.
  type: string
  inputBinding:
    prefix: --genome-names
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-get-sequences-for-gene-calls
