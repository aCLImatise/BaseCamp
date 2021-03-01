class: CommandLineTool
id: mendelscan_score.cwl
inputs:
- id: in_vep_file
  doc: Variant annotation in VEP format
  type: boolean?
  inputBinding:
    prefix: --vep-file
- id: in_ped_file
  doc: Pedigree file in 6-column tab-delimited format
  type: boolean?
  inputBinding:
    prefix: --ped-file
- id: in_gene_file
  doc: A list of gene expression values for tissue of interest
  type: boolean?
  inputBinding:
    prefix: --gene-file
- id: in_output_file
  doc: Output file to contain human-friendly scored variants
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_output_vcf
  doc: Output file to contain scored variants in VCF format
  type: File?
  inputBinding:
    prefix: --output-vcf
- id: in_inheritance
  doc: 'Presumed model of inheritance: dominant, recessive, x-linked [dominant]'
  type: boolean?
  inputBinding:
    prefix: --inheritance
- id: in_seg_score_case_ref
  doc: A case sample was called reference/wild-type (0.50/0.10)
  type: boolean?
  inputBinding:
    prefix: --seg-score-case-ref
- id: in_seg_score_case_het
  doc: A case sample was called heterozygous (NA/0.50)
  type: boolean?
  inputBinding:
    prefix: --seg-score-case-het
- id: in_seg_score_case_hom
  doc: A case sample was called homozygous variant (0.80/NA)
  type: boolean?
  inputBinding:
    prefix: --seg-score-case-hom
- id: in_seg_score_control_het
  doc: case sample was called heterozygous (0.10/NA)
  type: double?
  inputBinding:
    prefix: --seg-score-control-het
- id: in_seg_score_control_hom
  doc: case sample was called homozygous variant (0.01/0.10)
  type: double?
  inputBinding:
    prefix: --seg-score-control-hom
- id: in_max_vaf_for_ref
  doc: Maximum non-ref (variant) allele frequency at ref site to count as ref [0.05]
  type: boolean?
  inputBinding:
    prefix: --max-vaf-for-ref
- id: in_min_vaf_to_recall
  doc: Minimum VAF at which a reference genotype will be considered het. To disable
    recall, set to 1.01 [0.20]
  type: boolean?
  inputBinding:
    prefix: --min-vaf-to-recall
- id: in_pop_score_novel
  doc: Variant is not present in dbSNP according to VCF (1.00)
  type: boolean?
  inputBinding:
    prefix: --pop-score-novel
- id: in_pop_score_mutation
  doc: Variant from mutation (OMIM) or locus-specific databases (0.95)
  type: boolean?
  inputBinding:
    prefix: --pop-score-mutation
- id: in_pop_score_known
  doc: Variant known to dbSNP but no mutation or GMAF info (0.60)
  type: boolean?
  inputBinding:
    prefix: --pop-score-known
- id: in_pop_score_rare
  doc: Variant in dbSNP with GMAF < 0.01 (0.20)
  type: boolean?
  inputBinding:
    prefix: --pop-score-rare
- id: in_pop_score_uncommon
  doc: Variant in dbSNP with GMAF 0.01-0.05 (0.02)
  type: boolean?
  inputBinding:
    prefix: --pop-score-uncommon
- id: in_pop_score_common
  doc: Variant in dbSNP with GMAF >= 0.05 (0.01)
  type: boolean?
  inputBinding:
    prefix: --pop-score-common
- id: in_an_no_score_one
  doc: Score for intergenic mutations [0.01]
  type: boolean?
  inputBinding:
    prefix: --anno-score-1
- id: in_an_no_score_two
  doc: Score for intronic mutations [0.01]
  type: boolean?
  inputBinding:
    prefix: --anno-score-2
- id: in_an_no_score_three
  doc: Score for downstream mutations [0.01]
  type: boolean?
  inputBinding:
    prefix: --anno-score-3
- id: in_an_no_score_four
  doc: Score for upstream mutations [0.01]
  type: boolean?
  inputBinding:
    prefix: --anno-score-4
- id: in_an_no_score_five
  doc: Score for UTR mutations [0.01]
  type: boolean?
  inputBinding:
    prefix: --anno-score-5
- id: in_an_no_score_six
  doc: Score for ncRNA mutations [0.01]
  type: boolean?
  inputBinding:
    prefix: --anno-score-6
- id: in_an_no_score_seven
  doc: Score for miRNA mutations [0.01]
  type: boolean?
  inputBinding:
    prefix: --anno-score-7
- id: in_an_no_score_eight
  doc: Score for synonymous coding mutations [0.05]
  type: boolean?
  inputBinding:
    prefix: --anno-score-8
- id: in_an_no_score_nine
  doc: Score for splice region mutations [0.20]
  type: boolean?
  inputBinding:
    prefix: --anno-score-9
- id: in_an_no_score_one_zero
  doc: for nonstop mutations [1.00]
  type: long?
  inputBinding:
    prefix: --anno-score-10
- id: in_an_no_score_one_one
  doc: for missense mutations not predicted damaging [0.80]
  type: long?
  inputBinding:
    prefix: --anno-score-11
- id: in_an_no_score_one_two
  doc: for missense mutations damaging by 1/3 algorithms [0.95]
  type: long?
  inputBinding:
    prefix: --anno-score-12
- id: in_an_no_score_one_three
  doc: for missense mutations damaging by 2/3 algorithms [0.95]
  type: long?
  inputBinding:
    prefix: --anno-score-13
- id: in_an_no_score_one_four
  doc: for missense mutations damaging by 3/3 algorithms [0.95]
  type: long?
  inputBinding:
    prefix: --anno-score-14
- id: in_an_no_score_one_five
  doc: for essential splice site mutations [1.00]
  type: long?
  inputBinding:
    prefix: --anno-score-15
- id: in_an_no_score_one_six
  doc: for frameshift mutations [1.00]
  type: long?
  inputBinding:
    prefix: --anno-score-16
- id: in_an_no_score_one_seven
  doc: for nonsense mutations [1.00]
  type: long?
  inputBinding:
    prefix: --anno-score-17
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_score
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_vcf
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file to contain human-friendly scored variants
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_output_vcf
  doc: Output file to contain scored variants in VCF format
  type: File?
  outputBinding:
    glob: $(inputs.in_output_vcf)
hints: []
cwlVersion: v1.1
baseCommand:
- mendelscan
- score
