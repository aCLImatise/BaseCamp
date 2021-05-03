version 1.0

task Metaquastpy {
  input {
    Boolean? output_dir
    Boolean? filenamefilename_commaseparated_list
    File? references_list
    Boolean? features
    Boolean? min_contig
    Boolean? threads
    Boolean? split_scaffolds
    Boolean? labels
    Boolean? take_assembly_names
    Boolean? eukaryote
    Boolean? k_mer_stats
    Boolean? k_mer_size
    Boolean? gene_finding
    Boolean? conserved_genes_finding
    Boolean? use_all_alignments
    Int? min_alignment
    String? ambiguity_usage
    Float? ambiguity_score
    Boolean? unique_mapping
    Boolean? strict_na
    Boolean? extensive_mis_size
    Boolean? scaffold_gap_max_size
    Boolean? unaligned_part_size
    Boolean? skip_unaligned_mis_contigs
    Boolean? fragmented
    Boolean? pe_one
    Boolean? pe_two
    Boolean? no_check
    Boolean? no_plots
    Boolean? no_html
    Boolean? no_icarus
    Boolean? no_snps
    Boolean? no_gc
    Boolean? no_sv
    Boolean? no_gzip
    Boolean? no_read_stats
    Boolean? fast
    Boolean? silent
    Directory? test
    Directory? test_no_ref
    String python
  }
  command <<<
    metaquast_py \
      ~{python} \
      ~{if (output_dir) then "--output-dir" else ""} \
      ~{if (filenamefilename_commaseparated_list) then "-r" else ""} \
      ~{if defined(references_list) then ("--references-list " +  '"' + references_list + '"') else ""} \
      ~{if (features) then "--features" else ""} \
      ~{if (min_contig) then "--min-contig" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (split_scaffolds) then "--split-scaffolds" else ""} \
      ~{if (labels) then "--labels" else ""} \
      ~{if (take_assembly_names) then "-L" else ""} \
      ~{if (eukaryote) then "--eukaryote" else ""} \
      ~{if (k_mer_stats) then "--k-mer-stats" else ""} \
      ~{if (k_mer_size) then "--k-mer-size" else ""} \
      ~{if (gene_finding) then "--gene-finding" else ""} \
      ~{if (conserved_genes_finding) then "--conserved-genes-finding" else ""} \
      ~{if (use_all_alignments) then "--use-all-alignments" else ""} \
      ~{if defined(min_alignment) then ("--min-alignment " +  '"' + min_alignment + '"') else ""} \
      ~{if defined(ambiguity_usage) then ("--ambiguity-usage " +  '"' + ambiguity_usage + '"') else ""} \
      ~{if defined(ambiguity_score) then ("--ambiguity-score " +  '"' + ambiguity_score + '"') else ""} \
      ~{if (unique_mapping) then "--unique-mapping" else ""} \
      ~{if (strict_na) then "--strict-NA" else ""} \
      ~{if (extensive_mis_size) then "--extensive-mis-size" else ""} \
      ~{if (scaffold_gap_max_size) then "--scaffold-gap-max-size" else ""} \
      ~{if (unaligned_part_size) then "--unaligned-part-size" else ""} \
      ~{if (skip_unaligned_mis_contigs) then "--skip-unaligned-mis-contigs" else ""} \
      ~{if (fragmented) then "--fragmented" else ""} \
      ~{if (pe_one) then "--pe1" else ""} \
      ~{if (pe_two) then "--pe2" else ""} \
      ~{if (no_check) then "--no-check" else ""} \
      ~{if (no_plots) then "--no-plots" else ""} \
      ~{if (no_html) then "--no-html" else ""} \
      ~{if (no_icarus) then "--no-icarus" else ""} \
      ~{if (no_snps) then "--no-snps" else ""} \
      ~{if (no_gc) then "--no-gc" else ""} \
      ~{if (no_sv) then "--no-sv" else ""} \
      ~{if (no_gzip) then "--no-gzip" else ""} \
      ~{if (no_read_stats) then "--no-read-stats" else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (test_no_ref) then "--test-no-ref" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_dir: "<dirname>       Directory to store all result files [default: quast_results/results_<datetime>]"
    filenamefilename_commaseparated_list: "<filename,filename,...>      Comma-separated list of reference genomes or directory with reference genomes"
    references_list: "Text file with list of reference genome names for downloading from NCBI"
    features: "[type:]<filename>  File with genomic feature coordinates in the references (GFF, BED, NCBI or TXT)\\nOptional 'type' can be specified for extracting only a specific feature type from GFF"
    min_contig: "<int>           Lower threshold for contig length [default: 500]"
    threads: "<int>           Maximum number of threads [default: 25% of CPUs]"
    split_scaffolds: "Split assemblies by continuous fragments of N's and add such \\\"contigs\\\" to the comparison"
    labels: "\\\"label, label, ...\\\"      Names of assemblies to use in reports, comma-separated. If contain spaces, use quotes"
    take_assembly_names: "Take assembly names from their parent directory names"
    eukaryote: "Genome is eukaryotic (primarily affects gene prediction)\\n--fungus                          Genome is fungal (primarily affects gene prediction)\\n--large                           Use optimal parameters for evaluation of large genomes\\nIn particular, imposes '-e -m 3000 -i 500 -x 7000' (can be overridden manually)"
    k_mer_stats: "Compute k-mer-based quality metrics (recommended for large genomes)\\nThis may significantly increase memory and time consumption on large genomes"
    k_mer_size: "Size of k used in --k-mer-stats [default: 101]\\n--circos                          Draw Circos plot"
    gene_finding: "Predict genes using MetaGeneMark\\n--glimmer                         Use GlimmerHMM for gene prediction (instead of the default finder, see above)\\n--gene-thresholds <int,int,...>   Comma-separated list of threshold lengths of genes to search with Gene Finding module\\n[default: 0,300,1500,3000]\\n--rna-finding                     Predict ribosomal RNA genes using Barrnap"
    conserved_genes_finding: "Count conserved orthologs using BUSCO (only on Linux)\\n--operons  <filename>             File with operon coordinates in the reference (GFF, BED, NCBI or TXT)\\n--max-ref-number <int>            Maximum number of references (per each assembly) to download after looking in SILVA database.\\nSet 0 for not looking in SILVA at all [default: 50]\\n--blast-db <filename>             Custom BLAST database (.nsq file). By default, MetaQUAST searches references in SILVA database\\n--use-input-ref-order             Use provided order of references in MetaQUAST summary plots (default order: by the best average value)\\n--contig-thresholds <int,int,...> Comma-separated list of contig length thresholds [default: 0,1000,5000,10000,25000,50000]"
    use_all_alignments: "Compute genome fraction, # genes, # operons in QUAST v1.* style.\\nBy default, QUAST filters Minimap's alignments to keep only best ones"
    min_alignment: "The minimum alignment length [default: 65]\\n--min-identity <float>            The minimum alignment identity (80.0, 100.0) [default: 95.0]"
    ambiguity_usage: "Use none, one, or all alignments of a contig when all of them\\nare almost equally good (see --ambiguity-score) [default: one]"
    ambiguity_score: "Score S for defining equally good alignments of a single contig. All alignments are sorted\\nby decreasing LEN * IDY% value. All alignments with LEN * IDY% < S * best(LEN * IDY%) are\\ndiscarded. S should be between 0.8 and 1.0 [default: 0.99]"
    unique_mapping: "Disable --ambiguity-usage=all for the combined reference run,\\ni.e. use user-specified or default ('one') value of --ambiguity-usage"
    strict_na: "Break contigs in any misassembly event when compute NAx and NGAx.\\nBy default, QUAST breaks contigs only by extensive misassemblies (not local ones)"
    extensive_mis_size: "<int>       Lower threshold for extensive misassembly size. All relocations with inconsistency\\nless than extensive-mis-size are counted as local misassemblies [default: 1000]"
    scaffold_gap_max_size: "<int>    Max allowed scaffold gap length difference. All relocations with inconsistency\\nless than scaffold-gap-size are counted as scaffold gap misassemblies [default: 10000]"
    unaligned_part_size: "<int>      Lower threshold for detecting partially unaligned contigs. Such contig should have\\nat least one unaligned fragment >= the threshold [default: 500]"
    skip_unaligned_mis_contigs: "Do not distinguish contigs with >= 50% unaligned bases as a separate group\\nBy default, QUAST does not count misassemblies in them"
    fragmented: "Reference genome may be fragmented into small pieces (e.g. scaffolded reference)\\n--fragmented-max-indent  <int>    Mark translocation as fake if both alignments are located no further than N bases\\nfrom the ends of the reference fragments [default: 85]\\nRequires --fragmented option\\n--upper-bound-assembly            Simulate upper bound assembly based on the reference genome and reads\\n--upper-bound-min-con  <int>      Minimal number of 'connecting reads' needed for joining upper bound contigs into a scaffold\\n[default: 2 for mate-pairs and 1 for long reads]\\n--est-insert-size  <int>          Use provided insert size in upper bound assembly simulation [default: auto detect from reads or 255]\\n--plots-format  <str>             Save plots in specified format [default: pdf].\\nSupported formats: emf, eps, pdf, png, ps, raw, rgba, svg, svgz\\n--memory-efficient                Run everything using one thread, separately per each assembly.\\nThis may significantly reduce memory consumption on large genomes\\n--space-efficient                 Create only reports and plots files. Aux files including .stdout, .stderr, .coords will not be created.\\nThis may significantly reduce space consumption on large genomes. Icarus viewers also will not be built"
    pe_one: "<filename>              File with forward paired-end reads (in FASTQ format, may be gzipped)"
    pe_two: "<filename>              File with reverse paired-end reads (in FASTQ format, may be gzipped)\\n--pe12    <filename>              File with interlaced forward and reverse paired-end reads. (in FASTQ format, may be gzipped)\\n--mp1     <filename>              File with forward mate-pair reads (in FASTQ format, may be gzipped)\\n--mp2     <filename>              File with reverse mate-pair reads (in FASTQ format, may be gzipped)\\n--mp12    <filename>              File with interlaced forward and reverse mate-pair reads (in FASTQ format, may be gzipped)\\n--single  <filename>              File with unpaired short reads (in FASTQ format, may be gzipped)\\n--pacbio     <filename>           File with PacBio reads (in FASTQ format, may be gzipped)\\n--nanopore   <filename>           File with Oxford Nanopore reads (in FASTQ format, may be gzipped)\\n--ref-sam <filename>              SAM alignment file obtained by aligning reads to reference genome file\\n--ref-bam <filename>              BAM alignment file obtained by aligning reads to reference genome file\\n--sam     <filename,filename,...> Comma-separated list of SAM alignment files obtained by aligning reads to assemblies\\n(use the same order as for files with contigs)\\n--bam     <filename,filename,...> Comma-separated list of BAM alignment files obtained by aligning reads to assemblies\\n(use the same order as for files with contigs)\\nReads (or SAM/BAM file) are used for structural variation detection and\\ncoverage histogram building in Icarus\\n--sv-bedpe  <filename>            File with structural variations (in BEDPE format)"
    no_check: "Do not check and correct input fasta files. Use at your own risk (see manual)"
    no_plots: "Do not draw plots"
    no_html: "Do not build html reports and Icarus viewers"
    no_icarus: "Do not build Icarus viewers"
    no_snps: "Do not report SNPs (may significantly reduce memory consumption on large genomes)"
    no_gc: "Do not compute GC% and GC-distribution"
    no_sv: "Do not run structural variation detection (make sense only if reads are specified)"
    no_gzip: "Do not compress large output files"
    no_read_stats: "Do not align reads to assemblies\\nReads will be aligned to reference and used for coverage analysis,\\nupper bound assembly simulation, and structural variation detection.\\nUse this option if you do not need read statistics for assemblies."
    fast: "A combination of all speedup options except --no-check"
    silent: "Do not print detailed information about each step to stdout (log file is not affected)"
    test: "Run MetaQUAST on the data from the test_data folder, output to quast_test_output"
    test_no_ref: "Run MetaQUAST without references on the data from the test_data folder, output to quast_test_output.\\nMetaQUAST will download SILVA 16S rRNA database (~170 Mb) for searching reference genomes\\nInternet connection is required"
    python: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_test = "${in_test}"
    Directory out_test_no_ref = "${in_test_no_ref}"
  }
}