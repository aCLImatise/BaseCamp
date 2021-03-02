class: CommandLineTool
id: metaquast.cwl
inputs:
- id: in_output_dir
  doc: '<dirname>       Directory to store all result files [default: quast_results/results_<datetime>]'
  type: boolean?
  inputBinding:
    prefix: --output-dir
- id: in_filenamefilename_commaseparated_list
  doc: <filename,filename,...>      Comma-separated list of reference genomes or directory
    with reference genomes
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_references_list
  doc: Text file with list of reference genome names for downloading from NCBI
  type: File?
  inputBinding:
    prefix: --references-list
- id: in_features
  doc: "[type:]<filename>  File with genomic feature coordinates in the references\
    \ (GFF, BED, NCBI or TXT)\nOptional 'type' can be specified for extracting only\
    \ a specific feature type from GFF"
  type: boolean?
  inputBinding:
    prefix: --features
- id: in_min_contig
  doc: '<int>           Lower threshold for contig length [default: 500]'
  type: boolean?
  inputBinding:
    prefix: --min-contig
- id: in_threads
  doc: '<int>           Maximum number of threads [default: 25% of CPUs]'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_split_scaffolds
  doc: Split assemblies by continuous fragments of N's and add such "contigs" to the
    comparison
  type: boolean?
  inputBinding:
    prefix: --split-scaffolds
- id: in_labels
  doc: '"label, label, ..."      Names of assemblies to use in reports, comma-separated.
    If contain spaces, use quotes'
  type: boolean?
  inputBinding:
    prefix: --labels
- id: in_take_assembly_names
  doc: Take assembly names from their parent directory names
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_eukaryote
  doc: "Genome is eukaryotic (primarily affects gene prediction)\n--fungus       \
    \                   Genome is fungal (primarily affects gene prediction)\n--large\
    \                           Use optimal parameters for evaluation of large genomes\n\
    In particular, imposes '-e -m 3000 -i 500 -x 7000' (can be overridden manually)"
  type: boolean?
  inputBinding:
    prefix: --eukaryote
- id: in_k_mer_stats
  doc: "Compute k-mer-based quality metrics (recommended for large genomes)\nThis\
    \ may significantly increase memory and time consumption on large genomes"
  type: boolean?
  inputBinding:
    prefix: --k-mer-stats
- id: in_k_mer_size
  doc: "Size of k used in --k-mer-stats [default: 101]\n--circos                 \
    \         Draw Circos plot"
  type: boolean?
  inputBinding:
    prefix: --k-mer-size
- id: in_gene_finding
  doc: "Predict genes using MetaGeneMark\n--glimmer                         Use GlimmerHMM\
    \ for gene prediction (instead of the default finder, see above)\n--gene-thresholds\
    \ <int,int,...>   Comma-separated list of threshold lengths of genes to search\
    \ with Gene Finding module\n[default: 0,300,1500,3000]\n--rna-finding        \
    \             Predict ribosomal RNA genes using Barrnap"
  type: boolean?
  inputBinding:
    prefix: --gene-finding
- id: in_conserved_genes_finding
  doc: "Count conserved orthologs using BUSCO (only on Linux)\n--operons  <filename>\
    \             File with operon coordinates in the reference (GFF, BED, NCBI or\
    \ TXT)\n--max-ref-number <int>            Maximum number of references (per each\
    \ assembly) to download after looking in SILVA database.\nSet 0 for not looking\
    \ in SILVA at all [default: 50]\n--blast-db <filename>             Custom BLAST\
    \ database (.nsq file). By default, MetaQUAST searches references in SILVA database\n\
    --use-input-ref-order             Use provided order of references in MetaQUAST\
    \ summary plots (default order: by the best average value)\n--contig-thresholds\
    \ <int,int,...> Comma-separated list of contig length thresholds [default: 0,1000,5000,10000,25000,50000]"
  type: boolean?
  inputBinding:
    prefix: --conserved-genes-finding
- id: in_use_all_alignments
  doc: "Compute genome fraction, # genes, # operons in QUAST v1.* style.\nBy default,\
    \ QUAST filters Minimap's alignments to keep only best ones"
  type: boolean?
  inputBinding:
    prefix: --use-all-alignments
- id: in_min_alignment
  doc: "The minimum alignment length [default: 65]\n--min-identity <float>       \
    \     The minimum alignment identity (80.0, 100.0) [default: 95.0]"
  type: long?
  inputBinding:
    prefix: --min-alignment
- id: in_ambiguity_usage
  doc: "Use none, one, or all alignments of a contig when all of them\nare almost\
    \ equally good (see --ambiguity-score) [default: one]"
  type: string?
  inputBinding:
    prefix: --ambiguity-usage
- id: in_ambiguity_score
  doc: "Score S for defining equally good alignments of a single contig. All alignments\
    \ are sorted\nby decreasing LEN * IDY% value. All alignments with LEN * IDY% <\
    \ S * best(LEN * IDY%) are\ndiscarded. S should be between 0.8 and 1.0 [default:\
    \ 0.99]"
  type: double?
  inputBinding:
    prefix: --ambiguity-score
- id: in_unique_mapping
  doc: "Disable --ambiguity-usage=all for the combined reference run,\ni.e. use user-specified\
    \ or default ('one') value of --ambiguity-usage"
  type: boolean?
  inputBinding:
    prefix: --unique-mapping
- id: in_strict_na
  doc: "Break contigs in any misassembly event when compute NAx and NGAx.\nBy default,\
    \ QUAST breaks contigs only by extensive misassemblies (not local ones)"
  type: boolean?
  inputBinding:
    prefix: --strict-NA
- id: in_extensive_mis_size
  doc: "<int>       Lower threshold for extensive misassembly size. All relocations\
    \ with inconsistency\nless than extensive-mis-size are counted as local misassemblies\
    \ [default: 1000]"
  type: boolean?
  inputBinding:
    prefix: --extensive-mis-size
- id: in_scaffold_gap_max_size
  doc: "<int>    Max allowed scaffold gap length difference. All relocations with\
    \ inconsistency\nless than scaffold-gap-size are counted as scaffold gap misassemblies\
    \ [default: 10000]"
  type: boolean?
  inputBinding:
    prefix: --scaffold-gap-max-size
- id: in_unaligned_part_size
  doc: "<int>      Lower threshold for detecting partially unaligned contigs. Such\
    \ contig should have\nat least one unaligned fragment >= the threshold [default:\
    \ 500]"
  type: boolean?
  inputBinding:
    prefix: --unaligned-part-size
- id: in_skip_unaligned_mis_contigs
  doc: "Do not distinguish contigs with >= 50% unaligned bases as a separate group\n\
    By default, QUAST does not count misassemblies in them"
  type: boolean?
  inputBinding:
    prefix: --skip-unaligned-mis-contigs
- id: in_fragmented
  doc: "Reference genome may be fragmented into small pieces (e.g. scaffolded reference)\n\
    --fragmented-max-indent  <int>    Mark translocation as fake if both alignments\
    \ are located no further than N bases\nfrom the ends of the reference fragments\
    \ [default: 85]\nRequires --fragmented option\n--upper-bound-assembly        \
    \    Simulate upper bound assembly based on the reference genome and reads\n--upper-bound-min-con\
    \  <int>      Minimal number of 'connecting reads' needed for joining upper bound\
    \ contigs into a scaffold\n[default: 2 for mate-pairs and 1 for long reads]\n\
    --est-insert-size  <int>          Use provided insert size in upper bound assembly\
    \ simulation [default: auto detect from reads or 255]\n--plots-format  <str> \
    \            Save plots in specified format [default: pdf].\nSupported formats:\
    \ emf, eps, pdf, png, ps, raw, rgba, svg, svgz\n--memory-efficient           \
    \     Run everything using one thread, separately per each assembly.\nThis may\
    \ significantly reduce memory consumption on large genomes\n--space-efficient\
    \                 Create only reports and plots files. Aux files including .stdout,\
    \ .stderr, .coords will not be created.\nThis may significantly reduce space consumption\
    \ on large genomes. Icarus viewers also will not be built"
  type: boolean?
  inputBinding:
    prefix: --fragmented
- id: in_pe_one
  doc: <filename>              File with forward paired-end reads (in FASTQ format,
    may be gzipped)
  type: boolean?
  inputBinding:
    prefix: --pe1
- id: in_pe_two
  doc: "<filename>              File with reverse paired-end reads (in FASTQ format,\
    \ may be gzipped)\n--pe12    <filename>              File with interlaced forward\
    \ and reverse paired-end reads. (in FASTQ format, may be gzipped)\n--mp1     <filename>\
    \              File with forward mate-pair reads (in FASTQ format, may be gzipped)\n\
    --mp2     <filename>              File with reverse mate-pair reads (in FASTQ\
    \ format, may be gzipped)\n--mp12    <filename>              File with interlaced\
    \ forward and reverse mate-pair reads (in FASTQ format, may be gzipped)\n--single\
    \  <filename>              File with unpaired short reads (in FASTQ format, may\
    \ be gzipped)\n--pacbio     <filename>           File with PacBio reads (in FASTQ\
    \ format, may be gzipped)\n--nanopore   <filename>           File with Oxford\
    \ Nanopore reads (in FASTQ format, may be gzipped)\n--ref-sam <filename>     \
    \         SAM alignment file obtained by aligning reads to reference genome file\n\
    --ref-bam <filename>              BAM alignment file obtained by aligning reads\
    \ to reference genome file\n--sam     <filename,filename,...> Comma-separated\
    \ list of SAM alignment files obtained by aligning reads to assemblies\n(use the\
    \ same order as for files with contigs)\n--bam     <filename,filename,...> Comma-separated\
    \ list of BAM alignment files obtained by aligning reads to assemblies\n(use the\
    \ same order as for files with contigs)\nReads (or SAM/BAM file) are used for\
    \ structural variation detection and\ncoverage histogram building in Icarus\n\
    --sv-bedpe  <filename>            File with structural variations (in BEDPE format)"
  type: boolean?
  inputBinding:
    prefix: --pe2
- id: in_no_check
  doc: Do not check and correct input fasta files. Use at your own risk (see manual)
  type: boolean?
  inputBinding:
    prefix: --no-check
- id: in_no_plots
  doc: Do not draw plots
  type: boolean?
  inputBinding:
    prefix: --no-plots
- id: in_no_html
  doc: Do not build html reports and Icarus viewers
  type: boolean?
  inputBinding:
    prefix: --no-html
- id: in_no_icarus
  doc: Do not build Icarus viewers
  type: boolean?
  inputBinding:
    prefix: --no-icarus
- id: in_no_snps
  doc: Do not report SNPs (may significantly reduce memory consumption on large genomes)
  type: boolean?
  inputBinding:
    prefix: --no-snps
- id: in_no_gc
  doc: Do not compute GC% and GC-distribution
  type: boolean?
  inputBinding:
    prefix: --no-gc
- id: in_no_sv
  doc: Do not run structural variation detection (make sense only if reads are specified)
  type: boolean?
  inputBinding:
    prefix: --no-sv
- id: in_no_gzip
  doc: Do not compress large output files
  type: boolean?
  inputBinding:
    prefix: --no-gzip
- id: in_no_read_stats
  doc: "Do not align reads to assemblies\nReads will be aligned to reference and used\
    \ for coverage analysis,\nupper bound assembly simulation, and structural variation\
    \ detection.\nUse this option if you do not need read statistics for assemblies."
  type: boolean?
  inputBinding:
    prefix: --no-read-stats
- id: in_fast
  doc: A combination of all speedup options except --no-check
  type: boolean?
  inputBinding:
    prefix: --fast
- id: in_silent
  doc: Do not print detailed information about each step to stdout (log file is not
    affected)
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_test
  doc: Run MetaQUAST on the data from the test_data folder, output to quast_test_output
  type: Directory?
  inputBinding:
    prefix: --test
- id: in_test_no_ref
  doc: "Run MetaQUAST without references on the data from the test_data folder, output\
    \ to quast_test_output.\nMetaQUAST will download SILVA 16S rRNA database (~170\
    \ Mb) for searching reference genomes\nInternet connection is required"
  type: Directory?
  inputBinding:
    prefix: --test-no-ref
- id: in_python
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_test
  doc: Run MetaQUAST on the data from the test_data folder, output to quast_test_output
  type: Directory?
  outputBinding:
    glob: $(inputs.in_test)
- id: out_test_no_ref
  doc: "Run MetaQUAST without references on the data from the test_data folder, output\
    \ to quast_test_output.\nMetaQUAST will download SILVA 16S rRNA database (~170\
    \ Mb) for searching reference genomes\nInternet connection is required"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_test_no_ref)
hints: []
cwlVersion: v1.1
baseCommand:
- metaquast
