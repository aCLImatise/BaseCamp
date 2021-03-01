class: CommandLineTool
id: gstacks.cwl
inputs:
- id: in_input_directory_containg
  doc: ": input directory containg '*.matches.bam' files created by the\nde novo Stacks\
    \ pipeline, ustacks-cstacks-sstacks-tsv2bam"
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_input_directory_containing
  doc: ': input directory containing BAM files'
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_im_suffix_use
  doc: ": with -I/-M, suffix to use to build BAM file names: by default this\nis just\
    \ '.bam', i.e. the program expects 'SAMPLE_NAME.bam'"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_input_bam_files
  doc: ': input BAM file(s)'
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_path_population_map
  doc: ': path to a population map giving the list of samples'
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_output_directory_default
  doc: ": output directory (default: none with -B; with -P same as the input\ndirectory)"
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_threads
  doc: ': number of threads to use (default: 1)'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_model
  doc: ": model to use to call variants and genotypes; one of\nmarukilow (default),\
    \ marukihigh, or snp"
  type: boolean?
  inputBinding:
    prefix: --model
- id: in_var_alpha
  doc: ': alpha threshold for discovering SNPs (default: 0.01 for marukilow)'
  type: boolean?
  inputBinding:
    prefix: --var-alpha
- id: in_gt_alpha
  doc: ': alpha threshold for calling genotypes (default: 0.05)'
  type: boolean?
  inputBinding:
    prefix: --gt-alpha
- id: in_rm_pcr_duplicates
  doc: ": remove all but one set ofread pairs of the same sample that\nhave the same\
    \ insert length (implies --rm-unpaired-reads)"
  type: boolean?
  inputBinding:
    prefix: --rm-pcr-duplicates
- id: in_rm_unpaired_reads
  doc: ': discard unpaired reads'
  type: boolean?
  inputBinding:
    prefix: --rm-unpaired-reads
- id: in_ignore_pe_reads
  doc: ': ignore paired-end reads even if present in the input'
  type: boolean?
  inputBinding:
    prefix: --ignore-pe-reads
- id: in_unpaired
  doc: ": ignore read pairing (only for paired-end GBS; treat READ2's as if they were\
    \ READ1's)"
  type: boolean?
  inputBinding:
    prefix: --unpaired
- id: in_km_er_length
  doc: ': kmer length for the de Bruijn graph (default: 31, max. 31)'
  type: boolean?
  inputBinding:
    prefix: --kmer-length
- id: in_max_de_bruijn_reads
  doc: ': maximum number of reads to use in the de Bruijn graph (default: 1000)'
  type: boolean?
  inputBinding:
    prefix: --max-debruijn-reads
- id: in_min_km_er_cov
  doc: ': minimum coverage to consider a kmer (default: 2)'
  type: boolean?
  inputBinding:
    prefix: --min-kmer-cov
- id: in_write_alignments
  doc: ': save read alignments (heavy BAM files)'
  type: boolean?
  inputBinding:
    prefix: --write-alignments
- id: in_min_mapq
  doc: ': minimum PHRED-scaled mapping quality to consider a read (default: 10)'
  type: boolean?
  inputBinding:
    prefix: --min-mapq
- id: in_max_clipped
  doc: ': maximum soft-clipping level, in fraction of read length (default: 0.20)'
  type: boolean?
  inputBinding:
    prefix: --max-clipped
- id: in_max_insert_len
  doc: ': maximum allowed sequencing insert length (default: 1000)'
  type: boolean?
  inputBinding:
    prefix: --max-insert-len
- id: in_details
  doc: ': write a heavier output'
  type: boolean?
  inputBinding:
    prefix: --details
- id: in_phasing_co_occurrences_thr_range
  doc: ": range of edge coverage thresholds to\niterate over when building the graph\
    \ of allele cooccurrences for\nSNP phasing (default: 1,2)"
  type: boolean?
  inputBinding:
    prefix: --phasing-cooccurrences-thr-range
- id: in_phasing_dont_prune_he_ts
  doc: ": don't try to ignore dubious heterozygote\ngenotypes during phasing\n"
  type: boolean?
  inputBinding:
    prefix: --phasing-dont-prune-hets
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gstacks
