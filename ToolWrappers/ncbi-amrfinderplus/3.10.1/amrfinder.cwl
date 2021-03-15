class: CommandLineTool
id: amrfinder.cwl
inputs:
- id: in_update
  doc: Update the AMRFinder database
  type: boolean?
  inputBinding:
    prefix: --update
- id: in_force_update
  doc: Force updating the AMRFinder database
  type: boolean?
  inputBinding:
    prefix: --force_update
- id: in_protein
  doc: Input protein FASTA file
  type: File?
  inputBinding:
    prefix: --protein
- id: in_nucleotide
  doc: Input nucleotide FASTA file
  type: File?
  inputBinding:
    prefix: --nucleotide
- id: in_gff
  doc: GFF file for protein locations. Protein id should be in the attribute 'Name=<id>'
    (9th field) of the rows with type 'CDS' or 'gene' (3rd field).
  type: File?
  inputBinding:
    prefix: --gff
- id: in_p_gap
  doc: Input files PROT_FASTA, NUC_FASTA and GFF_FILE are created by the NCBI PGAP
  type: boolean?
  inputBinding:
    prefix: --pgap
- id: in_database
  doc: 'Alternative directory with AMRFinder database. Default: $AMRFINDER_DB'
  type: Directory?
  inputBinding:
    prefix: --database
- id: in_ident_min
  doc: "Minimum proportion of identical amino acids in alignment for hit (0..1). -1\
    \ means use a curated threshold if it exists and 0.9 otherwise\nDefault: -1"
  type: double?
  inputBinding:
    prefix: --ident_min
- id: in_coverage_min
  doc: "Minimum coverage of the reference protein (0..1)\nDefault: 0.5"
  type: long?
  inputBinding:
    prefix: --coverage_min
- id: in_organism
  doc: Taxonomy group. To see all possible taxonomy groups use the --list_organisms
    flag
  type: string?
  inputBinding:
    prefix: --organism
- id: in_list_organisms
  doc: Print the list of all possible taxonomy groups for mutations identification
    and exit
  type: boolean?
  inputBinding:
    prefix: --list_organisms
- id: in_translation_table
  doc: "NCBI genetic code for translated BLAST\nDefault: 11"
  type: long?
  inputBinding:
    prefix: --translation_table
- id: in_plus
  doc: Add the plus genes to the report
  type: boolean?
  inputBinding:
    prefix: --plus
- id: in_report_common
  doc: Report proteins common to a taxonomy group
  type: boolean?
  inputBinding:
    prefix: --report_common
- id: in_mutation_all
  doc: File to report all mutations
  type: File?
  inputBinding:
    prefix: --mutation_all
- id: in_blast_bin
  doc: 'Directory for BLAST. Deafult: $BLAST_BIN'
  type: Directory?
  inputBinding:
    prefix: --blast_bin
- id: in_name
  doc: Text to be added as the first column "name" to all rows of the report, for
    example it can be an assembly name
  type: string?
  inputBinding:
    prefix: --name
- id: in_output
  doc: Write output to OUTPUT_FILE instead of STDOUT
  type: File?
  inputBinding:
    prefix: --output
- id: in_protein_output
  doc: Output protein FASTA file of reported proteins
  type: File?
  inputBinding:
    prefix: --protein_output
- id: in_nucleotide_output
  doc: Output nucleotide FASTA file of reported nucleotide sequences
  type: File?
  inputBinding:
    prefix: --nucleotide_output
- id: in_quiet
  doc: Suppress messages to STDERR
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_g_pipe_org
  doc: NCBI internal GPipe organism names
  type: boolean?
  inputBinding:
    prefix: --gpipe_org
- id: in_parm
  doc: 'amr_report parameters for testing: -nosame -noblast -skip_hmm_check -bed'
  type: string?
  inputBinding:
    prefix: --parm
- id: in_threads
  doc: "Max. number of threads\nDefault: 4"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_debug
  doc: Integrity checks
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_log
  doc: Error log file, appended, opened on application start
  type: File?
  inputBinding:
    prefix: --log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Write output to OUTPUT_FILE instead of STDOUT
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_protein_output
  doc: Output protein FASTA file of reported proteins
  type: File?
  outputBinding:
    glob: $(inputs.in_protein_output)
- id: out_nucleotide_output
  doc: Output nucleotide FASTA file of reported nucleotide sequences
  type: File?
  outputBinding:
    glob: $(inputs.in_nucleotide_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ncbi-amrfinderplus:3.10.1--h671e170_0
cwlVersion: v1.1
baseCommand:
- amrfinder
