class: CommandLineTool
id: quast.py.cwl
inputs:
- id: fungus
  doc: Genome is fungal (primarily affects gene prediction)
  type: boolean
  inputBinding:
    prefix: --fungus
- id: large
  doc: Use optimal parameters for evaluation of large genomes In particular, imposes
    '-e -m 3000 -i 500 -x 7000' (can be overridden manually)
  type: boolean
  inputBinding:
    prefix: --large
- id: k_mer_size
  doc: 'Size of k used in --k-mer-stats [default: 101]'
  type: boolean
  inputBinding:
    prefix: --k-mer-size
- id: circo_s
  doc: Draw Circos plot
  type: boolean
  inputBinding:
    prefix: --circos
- id: mgm
  doc: Use MetaGeneMark for gene prediction (instead of the default finder, see above)
  type: boolean
  inputBinding:
    prefix: --mgm
- id: glimmer
  doc: Use GlimmerHMM for gene prediction (instead of the default finder, see above)
  type: boolean
  inputBinding:
    prefix: --glimmer
- id: gene_thresholds
  doc: '<int,int,...>   Comma-separated list of threshold lengths of genes to search
    with Gene Finding module [default: 0,300,1500,3000]'
  type: boolean
  inputBinding:
    prefix: --gene-thresholds
- id: rna_finding
  doc: Predict ribosomal RNA genes using Barrnap
  type: boolean
  inputBinding:
    prefix: --rna-finding
- id: operons
  doc: <filename>             File with operon coordinates in the reference (GFF,
    BED, NCBI or TXT)
  type: boolean
  inputBinding:
    prefix: --operons
- id: est_ref_size
  doc: Estimated reference size (for computing NGx metrics without a reference)
  type: long
  inputBinding:
    prefix: --est-ref-size
- id: contig_thresholds
  doc: '<int,int,...> Comma-separated list of contig length thresholds [default: 0,1000,5000,10000,25000,50000]'
  type: boolean
  inputBinding:
    prefix: --contig-thresholds
- id: min_identity
  doc: 'The minimum alignment identity (80.0, 100.0) [default: 95.0]'
  type: double
  inputBinding:
    prefix: --min-identity
- id: ambiguity_score
  doc: 'Score S for defining equally good alignments of a single contig. All alignments
    are sorted  by decreasing LEN * IDY% value. All alignments with LEN * IDY% < S
    * best(LEN * IDY%) are  discarded. S should be between 0.8 and 1.0 [default: 0.99]'
  type: double
  inputBinding:
    prefix: --ambiguity-score
- id: strict_na
  doc: Break contigs in any misassembly event when compute NAx and NGAx. By default,
    QUAST breaks contigs only by extensive misassemblies (not local ones)
  type: boolean
  inputBinding:
    prefix: --strict-NA
- id: scaffold_gap_max_size
  doc: '<int>    Max allowed scaffold gap length difference. All relocations with
    inconsistency less than scaffold-gap-size are counted as scaffold gap misassemblies
    [default: 10000]'
  type: boolean
  inputBinding:
    prefix: --scaffold-gap-max-size
- id: unaligned_part_size
  doc: '<int>      Lower threshold for detecting partially unaligned contigs. Such
    contig should have at least one unaligned fragment >= the threshold [default:
    500]'
  type: boolean
  inputBinding:
    prefix: --unaligned-part-size
- id: skip_unaligned_mis_contigs
  doc: Do not distinguish contigs with >= 50% unaligned bases as a separate group
    By default, QUAST does not count misassemblies in them
  type: boolean
  inputBinding:
    prefix: --skip-unaligned-mis-contigs
- id: fragmented
  doc: 'Reference genome may be fragmented into small pieces (e.g. scaffolded reference) '
  type: boolean
  inputBinding:
    prefix: --fragmented
- id: fragmented_max_indent
  doc: '<int>    Mark translocation as fake if both alignments are located no further
    than N bases  from the ends of the reference fragments [default: 85] Requires
    --fragmented option'
  type: boolean
  inputBinding:
    prefix: --fragmented-max-indent
- id: upper_bound_assembly
  doc: Simulate upper bound assembly based on the reference genome and reads
  type: boolean
  inputBinding:
    prefix: --upper-bound-assembly
- id: upper_bound_min_con
  doc: "<int>      Minimal number of 'connecting reads' needed for joining upper bound\
    \ contigs into a scaffold [default: 2 for mate-pairs and 1 for long reads]"
  type: boolean
  inputBinding:
    prefix: --upper-bound-min-con
- id: est_insert_size
  doc: '<int>          Use provided insert size in upper bound assembly simulation
    [default: auto detect from reads or 255]'
  type: boolean
  inputBinding:
    prefix: --est-insert-size
- id: plots_format
  doc: '<str>             Save plots in specified format [default: pdf]. Supported
    formats: emf, eps, pdf, png, ps, raw, rgba, svg, svgz'
  type: boolean
  inputBinding:
    prefix: --plots-format
- id: memory_efficient
  doc: Run everything using one thread, separately per each assembly. This may significantly
    reduce memory consumption on large genomes
  type: boolean
  inputBinding:
    prefix: --memory-efficient
- id: space_efficient
  doc: Create only reports and plots files. Aux files including .stdout, .stderr,
    .coords will not be created. This may significantly reduce space consumption on
    large genomes. Icarus viewers also will not be built
  type: boolean
  inputBinding:
    prefix: --space-efficient
- id: pe12
  doc: <filename>              File with interlaced forward and reverse paired-end
    reads. (in FASTQ format, may be gzipped)
  type: boolean
  inputBinding:
    prefix: --pe12
- id: mp1
  doc: <filename>              File with forward mate-pair reads (in FASTQ format,
    may be gzipped)
  type: boolean
  inputBinding:
    prefix: --mp1
- id: mp2
  doc: <filename>              File with reverse mate-pair reads (in FASTQ format,
    may be gzipped)
  type: boolean
  inputBinding:
    prefix: --mp2
- id: mp12
  doc: <filename>              File with interlaced forward and reverse mate-pair
    reads (in FASTQ format, may be gzipped)
  type: boolean
  inputBinding:
    prefix: --mp12
- id: single
  doc: <filename>              File with unpaired short reads (in FASTQ format, may
    be gzipped)
  type: boolean
  inputBinding:
    prefix: --single
- id: pac_bio
  doc: <filename>           File with PacBio reads (in FASTQ format, may be gzipped)
  type: boolean
  inputBinding:
    prefix: --pacbio
- id: nano_pore
  doc: <filename>           File with Oxford Nanopore reads (in FASTQ format, may
    be gzipped)
  type: boolean
  inputBinding:
    prefix: --nanopore
- id: ref_sam
  doc: SAM alignment file obtained by aligning reads to reference genome file
  type: File
  inputBinding:
    prefix: --ref-sam
- id: ref_bam
  doc: BAM alignment file obtained by aligning reads to reference genome file
  type: File
  inputBinding:
    prefix: --ref-bam
- id: sam
  doc: <filename,filename,...> Comma-separated list of SAM alignment files obtained
    by aligning reads to assemblies (use the same order as for files with contigs)
  type: boolean
  inputBinding:
    prefix: --sam
- id: bam
  doc: <filename,filename,...> Comma-separated list of BAM alignment files obtained
    by aligning reads to assemblies (use the same order as for files with contigs)
    Reads (or SAM/BAM file) are used for structural variation detection and coverage
    histogram building in Icarus
  type: boolean
  inputBinding:
    prefix: --bam
- id: sv_bed_pe
  doc: <filename>            File with structural variations (in BEDPE format)
  type: boolean
  inputBinding:
    prefix: --sv-bedpe
- id: no_check
  doc: Do not check and correct input fasta files. Use at your own risk (see manual)
  type: boolean
  inputBinding:
    prefix: --no-check
- id: no_plots
  doc: Do not draw plots
  type: boolean
  inputBinding:
    prefix: --no-plots
- id: no_html
  doc: Do not build html reports and Icarus viewers
  type: boolean
  inputBinding:
    prefix: --no-html
- id: no_icarus
  doc: Do not build Icarus viewers
  type: boolean
  inputBinding:
    prefix: --no-icarus
- id: no_snps
  doc: Do not report SNPs (may significantly reduce memory consumption on large genomes)
  type: boolean
  inputBinding:
    prefix: --no-snps
- id: no_gc
  doc: Do not compute GC% and GC-distribution
  type: boolean
  inputBinding:
    prefix: --no-gc
- id: no_sv
  doc: Do not run structural variation detection (make sense only if reads are specified)
  type: boolean
  inputBinding:
    prefix: --no-sv
- id: no_gzip
  doc: Do not compress large output files
  type: boolean
  inputBinding:
    prefix: --no-gzip
- id: no_read_stats
  doc: Do not align reads to assemblies Reads will be aligned to reference and used
    for coverage analysis, upper bound assembly simulation, and structural variation
    detection. Use this option if you do not need read statistics for assemblies.
  type: boolean
  inputBinding:
    prefix: --no-read-stats
- id: fast
  doc: A combination of all speedup options except --no-check
  type: boolean
  inputBinding:
    prefix: --fast
- id: silent
  doc: Do not print detailed information about each step to stdout (log file is not
    affected)
  type: boolean
  inputBinding:
    prefix: --silent
- id: test
  doc: Run QUAST on the data from the test_data folder, output to quast_test_output
  type: boolean
  inputBinding:
    prefix: --test
- id: test_sv
  doc: Run QUAST with structural variants detection on the data from the test_data
    folder, output to quast_test_output
  type: boolean
  inputBinding:
    prefix: --test-sv
outputs: []
cwlVersion: v1.1
baseCommand:
- quast.py
