class: CommandLineTool
id: funannotate_util_annotate.cwl
inputs:
- id: annotate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: gff
  doc: Genome GFF3 annotation file
  type: boolean
  inputBinding:
    prefix: --gff
- id: fast_a
  doc: Genome in multi-fasta format
  type: boolean
  inputBinding:
    prefix: --fasta
- id: species
  doc: Species name, use quotes for binomial, e.g. "Aspergillus fumigatus"
  type: boolean
  inputBinding:
    prefix: --species
- id: out
  doc: Output folder for results
  type: boolean
  inputBinding:
    prefix: --out
- id: sbt
  doc: NCBI submission template file. (Recommended)
  type: boolean
  inputBinding:
    prefix: --sbt
- id: annotations
  doc: Custom annotations (3 column tsv file)
  type: boolean
  inputBinding:
    prefix: --annotations
- id: eggnog
  doc: Eggnog-mapper annotations file (if NOT installed)
  type: boolean
  inputBinding:
    prefix: --eggnog
- id: anti_smash
  doc: antiSMASH secondary metabolism results (GBK file from output)
  type: boolean
  inputBinding:
    prefix: --antismash
- id: iprs_can
  doc: InterProScan5 XML file
  type: boolean
  inputBinding:
    prefix: --iprscan
- id: ph_obius
  doc: Phobius pre-computed results (if phobius NOT installed)
  type: boolean
  inputBinding:
    prefix: --phobius
- id: isolate
  doc: Isolate name
  type: boolean
  inputBinding:
    prefix: --isolate
- id: strain
  doc: Strain name
  type: boolean
  inputBinding:
    prefix: --strain
- id: rename
  doc: Rename GFF gene models with locus_tag from NCBI.
  type: boolean
  inputBinding:
    prefix: --rename
- id: fix
  doc: 'Gene/Product names fixed (TSV: GeneID      Name    Product)'
  type: boolean
  inputBinding:
    prefix: --fix
- id: remove
  doc: 'Gene/Product names to remove (TSV: Gene    Product)'
  type: boolean
  inputBinding:
    prefix: --remove
- id: busco_db
  doc: 'BUSCO models. Default: dikarya'
  type: boolean
  inputBinding:
    prefix: --busco_db
- id: tbl2asn
  doc: 'Additional parameters for tbl2asn. Default: "-l paired-ends"'
  type: boolean
  inputBinding:
    prefix: --tbl2asn
- id: database
  doc: 'Path to funannotate database. Default: $FUNANNOTATE_DB'
  type: boolean
  inputBinding:
    prefix: --database
- id: force
  doc: Force over-write of output folder
  type: boolean
  inputBinding:
    prefix: --force
- id: cpus
  doc: 'Number of CPUs to use. Default: 2'
  type: boolean
  inputBinding:
    prefix: --cpus
outputs: []
cwlVersion: v1.1
baseCommand:
- funannotate
- util
- annotate
