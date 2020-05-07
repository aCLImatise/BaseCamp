class: CommandLineTool
id: ribotish_predict.cwl
inputs:
- id: t
  doc: TIS enriched riboseq bam files, comma seperated
  type: string
  inputBinding:
    prefix: -t
- id: b
  doc: Ordinary riboseq bam files, comma seperated
  type: string
  inputBinding:
    prefix: -b
- id: g
  doc: Gene annotation file for ORF prediction
  type: string
  inputBinding:
    prefix: -g
- id: f
  doc: Genome fasta file
  type: string
  inputBinding:
    prefix: -f
- id: o
  doc: Output result file
  type: string
  inputBinding:
    prefix: -o
- id: i
  doc: 'Only test input candidate ORFs, format: transID start stop (0 based, half
    open)'
  type: string
  inputBinding:
    prefix: -i
- id: gene_format
  doc: 'Gene annotation file format (gtf, bed, gpd, gff, default: auto)'
  type: string
  inputBinding:
    prefix: --geneformat
- id: tis_para
  doc: Input offset parameter files for -t bam files
  type: string
  inputBinding:
    prefix: --tispara
- id: ribo_para
  doc: Input offset parameter files for -b bam files
  type: string
  inputBinding:
    prefix: --ribopara
- id: n_parts
  doc: 'Group transcript according to TIS reads density quantile (default: 10)'
  type: string
  inputBinding:
    prefix: --nparts
- id: a
  doc: Gene file for known protein coding gene annotation and TIS background estimation
    instead of -g gene file
  type: string
  inputBinding:
    prefix: -a
- id: e
  doc: 'Output TIS background estimation result (default: tisBackground.txt)'
  type: string
  inputBinding:
    prefix: -e
- id: s
  doc: Input background estimation result file instead of instant estimation
  type: string
  inputBinding:
    prefix: -s
- id: trans_profile
  doc: Output RPF P-site profile for each transcript
  type: string
  inputBinding:
    prefix: --transprofile
- id: in_profile
  doc: Input RPF P-site profile for each transcript, instead of reading bam reads,
    save time for re-running
  type: string
  inputBinding:
    prefix: --inprofile
- id: chr_map
  doc: Input chromosome id mapping table file if annotation chr ids are not same as
    chr ids in bam/fasta files
  type: string
  inputBinding:
    prefix: --chrmap
- id: all_result
  doc: "All result output without FDR q-value threshold (default: output + '_all.txt',\
    \ 'off' to turn off)"
  type: string
  inputBinding:
    prefix: --allresult
- id: alt
  doc: Use alternative start codons (all codons with 1 base different from ATG)
  type: boolean
  inputBinding:
    prefix: --alt
- id: alt_codons
  doc: Use provided alternative start codons, comma seperated, eg. CTG,GTG,ACG
  type: string
  inputBinding:
    prefix: --altcodons
- id: tis2ribo
  doc: Add TIS bam counts to ribo, if specified or -b not provided
  type: boolean
  inputBinding:
    prefix: --tis2ribo
- id: harr
  doc: The data is treated with harringtonine (instead of LTM)
  type: boolean
  inputBinding:
    prefix: --harr
- id: harr_width
  doc: 'Flanking region for harr data, in codons (default: 15)'
  type: string
  inputBinding:
    prefix: --harrwidth
- id: enrich_test
  doc: Use enrich test instead of frame test
  type: boolean
  inputBinding:
    prefix: --enrichtest
- id: min_aalen
  doc: 'Min amino acid length of candidate ORF (default: 6)'
  type: long
  inputBinding:
    prefix: --minaalen
- id: gene_filter
  doc: Only process given genes
  type: string
  inputBinding:
    prefix: --genefilter
- id: tp_th
  doc: 'TIS p value threshold (default: 0.05)'
  type: string
  inputBinding:
    prefix: --tpth
- id: fp_th
  doc: 'Frame p value threshold (default: 0.05)'
  type: string
  inputBinding:
    prefix: --fpth
- id: min_pth
  doc: 'At least one of TIS or frame p value should be lower than this threshold (default:
    0.05)'
  type: long
  inputBinding:
    prefix: --minpth
- id: fsp_th
  doc: Fisher's p value threshold
  type: string
  inputBinding:
    prefix: --fspth
- id: fsq_th
  doc: Fisher's FDR q value threshold
  type: string
  inputBinding:
    prefix: --fsqth
- id: frame_local_best
  doc: Only report local best frame test results
  type: boolean
  inputBinding:
    prefix: --framelocalbest
- id: frame_best
  doc: Only report best frame test results
  type: boolean
  inputBinding:
    prefix: --framebest
- id: longest
  doc: Only report longest possible ORF results
  type: boolean
  inputBinding:
    prefix: --longest
- id: seq
  doc: Report ORF sequences
  type: boolean
  inputBinding:
    prefix: --seq
- id: aa_seq
  doc: Report amino acid sequences
  type: boolean
  inputBinding:
    prefix: --aaseq
- id: blocks
  doc: Report all exon block positions for predicted ORFs
  type: boolean
  inputBinding:
    prefix: --blocks
- id: max_nh
  doc: 'Max NH value allowed for bam alignments (default: 5)'
  type: long
  inputBinding:
    prefix: --maxNH
- id: min_mapq
  doc: 'Min MapQ value required for bam alignments (default: 1)'
  type: long
  inputBinding:
    prefix: --minMapQ
- id: secondary
  doc: Use bam secondary alignments
  type: boolean
  inputBinding:
    prefix: --secondary
- id: paired
  doc: Reads are paired end
  type: boolean
  inputBinding:
    prefix: --paired
- id: no_compatible
  doc: Do not require reads compatible with transcript splice junctions
  type: boolean
  inputBinding:
    prefix: --nocompatible
- id: compatible_mis
  doc: 'Missed bases allowed in reads compatibility check (default: 2)'
  type: string
  inputBinding:
    prefix: --compatiblemis
- id: p
  doc: Number of processes
  type: string
  inputBinding:
    prefix: -p
- id: verbose
  doc: Increase output verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- ribotish
- predict
