version 1.0

task Quast.py {
  input {
    Boolean? fungus
    Boolean? large
    Boolean? k_mer_size
    Boolean? circo_s
    Boolean? mgm
    Boolean? glimmer
    Boolean? gene_thresholds
    Boolean? rna_finding
    Boolean? operons
    Int? est_ref_size
    Boolean? contig_thresholds
    Float? min_identity
    Float? ambiguity_score
    Boolean? strict_na
    Boolean? scaffold_gap_max_size
    Boolean? unaligned_part_size
    Boolean? skip_unaligned_mis_contigs
    Boolean? fragmented
    Boolean? fragmented_max_indent
    Boolean? upper_bound_assembly
    Boolean? upper_bound_min_con
    Boolean? est_insert_size
    Boolean? plots_format
    Boolean? memory_efficient
    Boolean? space_efficient
    Boolean? pe_one_two
    Boolean? mp_one
    Boolean? mp_two
    Boolean? mp_one_two
    Boolean? single
    Boolean? pac_bio
    Boolean? nano_pore
    File? ref_sam
    File? ref_bam
    Boolean? sam
    Boolean? bam
    Boolean? sv_bed_pe
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
    Boolean? test
    Boolean? test_sv
    String python
  }
  command <<<
    quast.py \
      ~{python} \
      ~{true="--fungus" false="" fungus} \
      ~{true="--large" false="" large} \
      ~{true="--k-mer-size" false="" k_mer_size} \
      ~{true="--circos" false="" circo_s} \
      ~{true="--mgm" false="" mgm} \
      ~{true="--glimmer" false="" glimmer} \
      ~{true="--gene-thresholds" false="" gene_thresholds} \
      ~{true="--rna-finding" false="" rna_finding} \
      ~{true="--operons" false="" operons} \
      ~{if defined(est_ref_size) then ("--est-ref-size " +  '"' + est_ref_size + '"') else ""} \
      ~{true="--contig-thresholds" false="" contig_thresholds} \
      ~{if defined(min_identity) then ("--min-identity " +  '"' + min_identity + '"') else ""} \
      ~{if defined(ambiguity_score) then ("--ambiguity-score " +  '"' + ambiguity_score + '"') else ""} \
      ~{true="--strict-NA" false="" strict_na} \
      ~{true="--scaffold-gap-max-size" false="" scaffold_gap_max_size} \
      ~{true="--unaligned-part-size" false="" unaligned_part_size} \
      ~{true="--skip-unaligned-mis-contigs" false="" skip_unaligned_mis_contigs} \
      ~{true="--fragmented" false="" fragmented} \
      ~{true="--fragmented-max-indent" false="" fragmented_max_indent} \
      ~{true="--upper-bound-assembly" false="" upper_bound_assembly} \
      ~{true="--upper-bound-min-con" false="" upper_bound_min_con} \
      ~{true="--est-insert-size" false="" est_insert_size} \
      ~{true="--plots-format" false="" plots_format} \
      ~{true="--memory-efficient" false="" memory_efficient} \
      ~{true="--space-efficient" false="" space_efficient} \
      ~{true="--pe12" false="" pe_one_two} \
      ~{true="--mp1" false="" mp_one} \
      ~{true="--mp2" false="" mp_two} \
      ~{true="--mp12" false="" mp_one_two} \
      ~{true="--single" false="" single} \
      ~{true="--pacbio" false="" pac_bio} \
      ~{true="--nanopore" false="" nano_pore} \
      ~{if defined(ref_sam) then ("--ref-sam " +  '"' + ref_sam + '"') else ""} \
      ~{if defined(ref_bam) then ("--ref-bam " +  '"' + ref_bam + '"') else ""} \
      ~{true="--sam" false="" sam} \
      ~{true="--bam" false="" bam} \
      ~{true="--sv-bedpe" false="" sv_bed_pe} \
      ~{true="--no-check" false="" no_check} \
      ~{true="--no-plots" false="" no_plots} \
      ~{true="--no-html" false="" no_html} \
      ~{true="--no-icarus" false="" no_icarus} \
      ~{true="--no-snps" false="" no_snps} \
      ~{true="--no-gc" false="" no_gc} \
      ~{true="--no-sv" false="" no_sv} \
      ~{true="--no-gzip" false="" no_gzip} \
      ~{true="--no-read-stats" false="" no_read_stats} \
      ~{true="--fast" false="" fast} \
      ~{true="--silent" false="" silent} \
      ~{true="--test" false="" test} \
      ~{true="--test-sv" false="" test_sv}
  >>>
  parameter_meta {
    fungus: "Genome is fungal (primarily affects gene prediction)"
    large: "Use optimal parameters for evaluation of large genomes In particular, imposes '-e -m 3000 -i 500 -x 7000' (can be overridden manually)"
    k_mer_size: "Size of k used in --k-mer-stats [default: 101]"
    circo_s: "Draw Circos plot"
    mgm: "Use MetaGeneMark for gene prediction (instead of the default finder, see above)"
    glimmer: "Use GlimmerHMM for gene prediction (instead of the default finder, see above)"
    gene_thresholds: "<int,int,...>   Comma-separated list of threshold lengths of genes to search with Gene Finding module [default: 0,300,1500,3000]"
    rna_finding: "Predict ribosomal RNA genes using Barrnap"
    operons: "<filename>             File with operon coordinates in the reference (GFF, BED, NCBI or TXT)"
    est_ref_size: "Estimated reference size (for computing NGx metrics without a reference)"
    contig_thresholds: "<int,int,...> Comma-separated list of contig length thresholds [default: 0,1000,5000,10000,25000,50000]"
    min_identity: "The minimum alignment identity (80.0, 100.0) [default: 95.0]"
    ambiguity_score: "Score S for defining equally good alignments of a single contig. All alignments are sorted  by decreasing LEN * IDY% value. All alignments with LEN * IDY% < S * best(LEN * IDY%) are  discarded. S should be between 0.8 and 1.0 [default: 0.99]"
    strict_na: "Break contigs in any misassembly event when compute NAx and NGAx. By default, QUAST breaks contigs only by extensive misassemblies (not local ones)"
    scaffold_gap_max_size: "<int>    Max allowed scaffold gap length difference. All relocations with inconsistency less than scaffold-gap-size are counted as scaffold gap misassemblies [default: 10000]"
    unaligned_part_size: "<int>      Lower threshold for detecting partially unaligned contigs. Such contig should have at least one unaligned fragment >= the threshold [default: 500]"
    skip_unaligned_mis_contigs: "Do not distinguish contigs with >= 50% unaligned bases as a separate group By default, QUAST does not count misassemblies in them"
    fragmented: "Reference genome may be fragmented into small pieces (e.g. scaffolded reference) "
    fragmented_max_indent: "<int>    Mark translocation as fake if both alignments are located no further than N bases  from the ends of the reference fragments [default: 85] Requires --fragmented option"
    upper_bound_assembly: "Simulate upper bound assembly based on the reference genome and reads"
    upper_bound_min_con: "<int>      Minimal number of 'connecting reads' needed for joining upper bound contigs into a scaffold [default: 2 for mate-pairs and 1 for long reads]"
    est_insert_size: "<int>          Use provided insert size in upper bound assembly simulation [default: auto detect from reads or 255]"
    plots_format: "<str>             Save plots in specified format [default: pdf]. Supported formats: emf, eps, pdf, png, ps, raw, rgba, svg, svgz"
    memory_efficient: "Run everything using one thread, separately per each assembly. This may significantly reduce memory consumption on large genomes"
    space_efficient: "Create only reports and plots files. Aux files including .stdout, .stderr, .coords will not be created. This may significantly reduce space consumption on large genomes. Icarus viewers also will not be built"
    pe_one_two: "<filename>              File with interlaced forward and reverse paired-end reads. (in FASTQ format, may be gzipped)"
    mp_one: "<filename>              File with forward mate-pair reads (in FASTQ format, may be gzipped)"
    mp_two: "<filename>              File with reverse mate-pair reads (in FASTQ format, may be gzipped)"
    mp_one_two: "<filename>              File with interlaced forward and reverse mate-pair reads (in FASTQ format, may be gzipped)"
    single: "<filename>              File with unpaired short reads (in FASTQ format, may be gzipped)"
    pac_bio: "<filename>           File with PacBio reads (in FASTQ format, may be gzipped)"
    nano_pore: "<filename>           File with Oxford Nanopore reads (in FASTQ format, may be gzipped)"
    ref_sam: "SAM alignment file obtained by aligning reads to reference genome file"
    ref_bam: "BAM alignment file obtained by aligning reads to reference genome file"
    sam: "<filename,filename,...> Comma-separated list of SAM alignment files obtained by aligning reads to assemblies (use the same order as for files with contigs)"
    bam: "<filename,filename,...> Comma-separated list of BAM alignment files obtained by aligning reads to assemblies (use the same order as for files with contigs) Reads (or SAM/BAM file) are used for structural variation detection and coverage histogram building in Icarus"
    sv_bed_pe: "<filename>            File with structural variations (in BEDPE format)"
    no_check: "Do not check and correct input fasta files. Use at your own risk (see manual)"
    no_plots: "Do not draw plots"
    no_html: "Do not build html reports and Icarus viewers"
    no_icarus: "Do not build Icarus viewers"
    no_snps: "Do not report SNPs (may significantly reduce memory consumption on large genomes)"
    no_gc: "Do not compute GC% and GC-distribution"
    no_sv: "Do not run structural variation detection (make sense only if reads are specified)"
    no_gzip: "Do not compress large output files"
    no_read_stats: "Do not align reads to assemblies Reads will be aligned to reference and used for coverage analysis, upper bound assembly simulation, and structural variation detection. Use this option if you do not need read statistics for assemblies."
    fast: "A combination of all speedup options except --no-check"
    silent: "Do not print detailed information about each step to stdout (log file is not affected)"
    test: "Run QUAST on the data from the test_data folder, output to quast_test_output"
    test_sv: "Run QUAST with structural variants detection on the data from the test_data folder, output to quast_test_output"
    python: ""
  }
}