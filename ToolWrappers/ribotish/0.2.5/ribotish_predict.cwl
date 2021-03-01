class: CommandLineTool
id: ribotish_predict.cwl
inputs:
- id: in_tis_enriched_riboseq
  doc: TIS enriched riboseq bam files, comma seperated
  type: string?
  inputBinding:
    prefix: -t
- id: in_ordinary_riboseq_bam
  doc: Ordinary riboseq bam files, comma seperated
  type: string?
  inputBinding:
    prefix: -b
- id: in_gene_annotation_file_orf
  doc: Gene annotation file for ORF prediction
  type: File?
  inputBinding:
    prefix: -g
- id: in_genome_fasta_file
  doc: Genome fasta file
  type: File?
  inputBinding:
    prefix: -f
- id: in_output_result_file
  doc: Output result file
  type: File?
  inputBinding:
    prefix: -o
- id: in_only_test_input
  doc: "Only test input candidate ORFs, format: transID start\nstop (0 based, half\
    \ open)"
  type: long?
  inputBinding:
    prefix: -i
- id: in_gene_format
  doc: "Gene annotation file format (gtf, bed, gpd, gff,\ndefault: auto)"
  type: File?
  inputBinding:
    prefix: --geneformat
- id: in_tis_para
  doc: Input offset parameter files for -t bam files
  type: string?
  inputBinding:
    prefix: --tispara
- id: in_ribo_para
  doc: Input offset parameter files for -b bam files
  type: string?
  inputBinding:
    prefix: --ribopara
- id: in_n_parts
  doc: "Group transcript according to TIS reads density\nquantile (default: 10)"
  type: long?
  inputBinding:
    prefix: --nparts
- id: in_gene_file_file
  doc: "Gene file for known protein coding gene annotation and\nTIS background estimation\
    \ instead of -g gene file"
  type: File?
  inputBinding:
    prefix: -a
- id: in_output_tis_background
  doc: "Output TIS background estimation result (default:\ntisBackground.txt)"
  type: File?
  inputBinding:
    prefix: -e
- id: in_input_background_estimation
  doc: "Input background estimation result file instead of\ninstant estimation"
  type: File?
  inputBinding:
    prefix: -s
- id: in_trans_profile
  doc: Output RPF P-site profile for each transcript
  type: string?
  inputBinding:
    prefix: --transprofile
- id: in_in_profile
  doc: "Input RPF P-site profile for each transcript, instead\nof reading bam reads,\
    \ save time for re-running"
  type: string?
  inputBinding:
    prefix: --inprofile
- id: in_chr_map
  doc: "Input chromosome id mapping table file if annotation\nchr ids are not same\
    \ as chr ids in bam/fasta files"
  type: File?
  inputBinding:
    prefix: --chrmap
- id: in_all_result
  doc: "All result output without FDR q-value threshold\n(default: output + '_all.txt',\
    \ 'off' to turn off)"
  type: string?
  inputBinding:
    prefix: --allresult
- id: in_alt
  doc: "Use alternative start codons (all codons with 1 base\ndifferent from ATG)"
  type: boolean?
  inputBinding:
    prefix: --alt
- id: in_alt_codons
  doc: "Use provided alternative start codons, comma\nseperated, eg. CTG,GTG,ACG"
  type: string?
  inputBinding:
    prefix: --altcodons
- id: in_tis_two_ribo
  doc: Add TIS bam counts to ribo, if specified or -b not
  type: boolean?
  inputBinding:
    prefix: --tis2ribo
- id: in_harr_width
  doc: 'Flanking region for harr data, in codons (default: 15)'
  type: long?
  inputBinding:
    prefix: --harrwidth
- id: in_enrich_test
  doc: Use enrich test instead of frame test
  type: boolean?
  inputBinding:
    prefix: --enrichtest
- id: in_min_aalen
  doc: 'Min amino acid length of candidate ORF (default: 6)'
  type: long?
  inputBinding:
    prefix: --minaalen
- id: in_gene_filter
  doc: Only process given genes
  type: string?
  inputBinding:
    prefix: --genefilter
- id: in_tp_th
  doc: 'TIS p value threshold (default: 0.05)'
  type: double?
  inputBinding:
    prefix: --tpth
- id: in_fp_th
  doc: 'Frame p value threshold (default: 0.05)'
  type: double?
  inputBinding:
    prefix: --fpth
- id: in_min_pth
  doc: "At least one of TIS or frame p value should be lower\nthan this threshold\
    \ (default: 0.05)"
  type: long?
  inputBinding:
    prefix: --minpth
- id: in_fsp_th
  doc: Fisher's p value threshold
  type: string?
  inputBinding:
    prefix: --fspth
- id: in_fsq_th
  doc: Fisher's FDR q value threshold
  type: string?
  inputBinding:
    prefix: --fsqth
- id: in_frame_local_best
  doc: Only report local best frame test results
  type: boolean?
  inputBinding:
    prefix: --framelocalbest
- id: in_frame_best
  doc: Only report best frame test results
  type: boolean?
  inputBinding:
    prefix: --framebest
- id: in_longest
  doc: Only report longest possible ORF results
  type: boolean?
  inputBinding:
    prefix: --longest
- id: in_seq
  doc: Report ORF sequences
  type: boolean?
  inputBinding:
    prefix: --seq
- id: in_aa_seq
  doc: Report amino acid sequences
  type: boolean?
  inputBinding:
    prefix: --aaseq
- id: in_blocks
  doc: Report all exon block positions for predicted ORFs
  type: boolean?
  inputBinding:
    prefix: --blocks
- id: in_max_nh
  doc: 'Max NH value allowed for bam alignments (default: 5)'
  type: long?
  inputBinding:
    prefix: --maxNH
- id: in_min_mapq
  doc: "Min MapQ value required for bam alignments (default:\n1)"
  type: long?
  inputBinding:
    prefix: --minMapQ
- id: in_secondary
  doc: Use bam secondary alignments
  type: boolean?
  inputBinding:
    prefix: --secondary
- id: in_paired
  doc: Reads are paired end
  type: boolean?
  inputBinding:
    prefix: --paired
- id: in_no_compatible
  doc: Do not require reads compatible with transcript splice
  type: boolean?
  inputBinding:
    prefix: --nocompatible
- id: in_number_of_processes
  doc: Number of processes
  type: long?
  inputBinding:
    prefix: -p
- id: in_verbose
  doc: Increase output verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_provided
  doc: --harr                The data is treated with harringtonine (instead of
  type: string
  inputBinding:
    position: 0
- id: in_junctions
  doc: --compatiblemis COMPATIBLEMIS
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_result_file
  doc: Output result file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_result_file)
hints: []
cwlVersion: v1.1
baseCommand:
- ribotish
- predict
