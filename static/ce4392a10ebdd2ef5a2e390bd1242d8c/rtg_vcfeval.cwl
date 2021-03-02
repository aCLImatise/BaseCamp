class: CommandLineTool
id: rtg_vcfeval.cwl
inputs:
- id: in_baseline
  doc: VCF file containing baseline variants
  type: File?
  inputBinding:
    prefix: --baseline
- id: in_bed_regions
  doc: "if set, only read VCF records that overlap the\nranges contained in the specified\
    \ BED file"
  type: File?
  inputBinding:
    prefix: --bed-regions
- id: in_calls
  doc: VCF file containing called variants
  type: File?
  inputBinding:
    prefix: --calls
- id: in_evaluation_regions
  doc: "if set, evaluate within regions contained in\nthe supplied BED file, allowing\
    \ transborder\nmatches. To be used for truth-set\nhigh-confidence regions or other\
    \ regions of\ninterest where region boundary effects should\nbe minimized"
  type: File?
  inputBinding:
    prefix: --evaluation-regions
- id: in_output
  doc: directory for output
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_region
  doc: "if set, only read VCF records within the\nspecified range. The format is one\
    \ of\n<sequence_name>, <sequence_name>:<start>-<end>,\n<sequence_name>:<pos>+<length>\
    \ or\n<sequence_name>:<pos>~<padding>"
  type: long?
  inputBinding:
    prefix: --region
- id: in_template
  doc: "SDF of the reference genome the variants are\ncalled against"
  type: string?
  inputBinding:
    prefix: --template
- id: in_all_records
  doc: "use all records regardless of FILTER status\n(Default is to only process records\
    \ where\nFILTER is \".\" or \"PASS\")"
  type: boolean?
  inputBinding:
    prefix: --all-records
- id: in_decompose
  doc: "decompose complex variants into smaller\nconstituents to allow partial credit"
  type: boolean?
  inputBinding:
    prefix: --decompose
- id: in_ref_overlap
  doc: "allow alleles to overlap where bases of either\nallele are same-as-ref (Default\
    \ is to only\nallow VCF anchor base overlap)"
  type: boolean?
  inputBinding:
    prefix: --ref-overlap
- id: in_sample
  doc: "the name of the sample to select. Use\n<baseline_sample>,<calls_sample> to\
    \ select\ndifferent sample names for baseline and calls.\n(Required when using\
    \ multi-sample VCF files)"
  type: string?
  inputBinding:
    prefix: --sample
- id: in_sample_ploidy
  doc: expected ploidy of samples (Default is 2)
  type: long?
  inputBinding:
    prefix: --sample-ploidy
- id: in_squash_ploidy
  doc: "treat heterozygous genotypes as homozygous ALT\nin both baseline and calls,\
    \ to allow matches\nthat ignore zygosity differences"
  type: boolean?
  inputBinding:
    prefix: --squash-ploidy
- id: in_at_precision
  doc: "output summary statistics where precision >=\nsupplied value (Default is to\
    \ summarize at\nmaximum F-measure)"
  type: double?
  inputBinding:
    prefix: --at-precision
- id: in_at_sensitivity
  doc: "output summary statistics where sensitivity >=\nsupplied value (Default is\
    \ to summarize at\nmaximum F-measure)"
  type: double?
  inputBinding:
    prefix: --at-sensitivity
- id: in_no_roc
  doc: do not produce ROCs
  type: boolean?
  inputBinding:
    prefix: --no-roc
- id: in_output_mode
  doc: "output reporting mode. Allowed values are\n[split, annotate, combine, ga4gh,\
    \ roc-only]\n(Default is split)"
  type: long?
  inputBinding:
    prefix: --output-mode
- id: in_roc_expr
  doc: "output ROC file for variants matching custom\nJavaScript expression. Use the\
    \ form\n<LABEL>=<EXPRESSION>. May be specified 0 or\nmore times"
  type: File?
  inputBinding:
    prefix: --roc-expr
- id: in_roc_regions
  doc: "output ROC file for variants overlapping custom\nregions supplied in BED file.\
    \ Use the form\n<LABEL>=<FILENAME>. May be specified 0 or more\ntimes"
  type: File?
  inputBinding:
    prefix: --roc-regions
- id: in_roc_subset
  doc: "output ROC file for preset variant subset.\nAllowed values are [hom, het,\
    \ snp, non-snp,\nmnp, indel]. May be specified 0 or more times,\nor as a comma\
    \ separated list"
  type: File?
  inputBinding:
    prefix: --roc-subset
- id: in_sort_order
  doc: "the order in which to sort the ROC scores so\nthat \"good\" scores come before\
    \ \"bad\" scores.\nAllowed values are [ascending, descending]\n(Default is descending)"
  type: string?
  inputBinding:
    prefix: --sort-order
- id: in_vcf_score_field
  doc: "the name of the VCF FORMAT field to use as the\nROC score. Also valid are\
    \ \"QUAL\", \"INFO.<name>\"\nor \"FORMAT.<name>\" to select the named VCF\nFORMAT\
    \ or INFO field (Default is GQ)"
  type: string?
  inputBinding:
    prefix: --vcf-score-field
- id: in_no_gzip
  doc: do not gzip the output
  type: boolean?
  inputBinding:
    prefix: --no-gzip
- id: in_threads
  doc: "number of threads (Default is the number of\navailable cores)\n"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: directory for output
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_roc_expr
  doc: "output ROC file for variants matching custom\nJavaScript expression. Use the\
    \ form\n<LABEL>=<EXPRESSION>. May be specified 0 or\nmore times"
  type: File?
  outputBinding:
    glob: $(inputs.in_roc_expr)
- id: out_roc_regions
  doc: "output ROC file for variants overlapping custom\nregions supplied in BED file.\
    \ Use the form\n<LABEL>=<FILENAME>. May be specified 0 or more\ntimes"
  type: File?
  outputBinding:
    glob: $(inputs.in_roc_regions)
- id: out_roc_subset
  doc: "output ROC file for preset variant subset.\nAllowed values are [hom, het,\
    \ snp, non-snp,\nmnp, indel]. May be specified 0 or more times,\nor as a comma\
    \ separated list"
  type: File?
  outputBinding:
    glob: $(inputs.in_roc_subset)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rtg-tools:3.12--0
cwlVersion: v1.1
baseCommand:
- rtg
- vcfeval
