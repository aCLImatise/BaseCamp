class: CommandLineTool
id: funannotate_annotate.cwl
inputs:
- id: in_input
  doc: Folder from funannotate predict
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_out
  doc: Output folder for results
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_fast_a
  doc: Genome in multi-fasta format
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_species
  doc: Species name, use quotes for binomial, e.g. "Aspergillus fumigatus"
  type: boolean?
  inputBinding:
    prefix: --species
- id: in_sbt
  doc: NCBI submission template file. (Recommended)
  type: boolean?
  inputBinding:
    prefix: --sbt
- id: in_annotations
  doc: Custom annotations (3 column tsv file)
  type: boolean?
  inputBinding:
    prefix: --annotations
- id: in_eggnog
  doc: Eggnog-mapper annotations file (if NOT installed)
  type: boolean?
  inputBinding:
    prefix: --eggnog
- id: in_anti_smash
  doc: antiSMASH secondary metabolism results (GBK file from output)
  type: File?
  inputBinding:
    prefix: --antismash
- id: in_iprs_can
  doc: InterProScan5 XML file
  type: boolean?
  inputBinding:
    prefix: --iprscan
- id: in_ph_obius
  doc: Phobius pre-computed results (if phobius NOT installed)
  type: boolean?
  inputBinding:
    prefix: --phobius
- id: in_isolate
  doc: Isolate name
  type: boolean?
  inputBinding:
    prefix: --isolate
- id: in_strain
  doc: Strain name
  type: boolean?
  inputBinding:
    prefix: --strain
- id: in_rename
  doc: Rename GFF gene models with locus_tag from NCBI.
  type: boolean?
  inputBinding:
    prefix: --rename
- id: in_fix
  doc: 'Gene/Product names fixed (TSV: GeneID      Name    Product)'
  type: boolean?
  inputBinding:
    prefix: --fix
- id: in_remove
  doc: 'Gene/Product names to remove (TSV: Gene    Product)'
  type: boolean?
  inputBinding:
    prefix: --remove
- id: in_busco_db
  doc: 'BUSCO models. Default: dikarya'
  type: boolean?
  inputBinding:
    prefix: --busco_db
- id: in_tbl_two_asn
  doc: 'Additional parameters for tbl2asn. Default: "-l paired-ends"'
  type: boolean?
  inputBinding:
    prefix: --tbl2asn
- id: in_database
  doc: 'Path to funannotate database. Default: $FUNANNOTATE_DB'
  type: boolean?
  inputBinding:
    prefix: --database
- id: in_force
  doc: Force over-write of output folder
  type: Directory?
  inputBinding:
    prefix: --force
- id: in_cpus
  doc: 'Number of CPUs to use. Default: 2'
  type: boolean?
  inputBinding:
    prefix: --cpus
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output folder for results
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_anti_smash
  doc: antiSMASH secondary metabolism results (GBK file from output)
  type: File?
  outputBinding:
    glob: $(inputs.in_anti_smash)
- id: out_force
  doc: Force over-write of output folder
  type: Directory?
  outputBinding:
    glob: $(inputs.in_force)
hints: []
cwlVersion: v1.1
baseCommand:
- funannotate
- annotate
