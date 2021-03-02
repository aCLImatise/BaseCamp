class: CommandLineTool
id: pilon.cwl
inputs:
- id: in_genome
  doc: "The input genome we are trying to improve, which must be the reference used\n\
    for the bam alignments.  At least one of --frags or --jumps must also be given."
  type: string?
  inputBinding:
    prefix: --genome
- id: in_frags
  doc: "A bam file consisting of fragment paired-end alignments, aligned to the --genome\n\
    argument using bwa or bowtie2.  This argument may be specifed more than once."
  type: File?
  inputBinding:
    prefix: --frags
- id: in_jumps
  doc: "A bam file consisting of jump (mate pair) paired-end alignments, aligned to\
    \ the\n--genome argument using bwa or bowtie2.  This argument may be specifed\
    \ more than once."
  type: File?
  inputBinding:
    prefix: --jumps
- id: in_unpaired
  doc: "A bam file consisting of unpaired alignments, aligned to the --genome argument\n\
    using bwa or bowtie2.  This argument may be specifed more than once."
  type: File?
  inputBinding:
    prefix: --unpaired
- id: in_bam
  doc: "A bam file of unknown type; Pilon will scan it and attempt to classify it\
    \ as one\nof the above bam types."
  type: File?
  inputBinding:
    prefix: --bam
- id: in_output
  doc: Prefix for output files
  type: string?
  inputBinding:
    prefix: --output
- id: in_outdir
  doc: Use this directory for all output files.
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_changes
  doc: If specified, a file listing changes in the <output>.fasta will be generated.
  type: File?
  inputBinding:
    prefix: --changes
- id: in_vcf
  doc: If specified, a vcf file will be generated
  type: boolean?
  inputBinding:
    prefix: --vcf
- id: in_vcf_qe
  doc: "If specified, the VCF will contain a QE (quality-weighted evidence) field\
    \ rather\nthan the default QP (quality-weighted percentage of evidence) field."
  type: boolean?
  inputBinding:
    prefix: --vcfqe
- id: in_tracks
  doc: "This options will cause many track files (*.bed, *.wig) suitable for viewing\
    \ in\na genome browser to be written."
  type: boolean?
  inputBinding:
    prefix: --tracks
- id: in_variant
  doc: "Sets up heuristics for variant calling, as opposed to assembly improvement;\n\
    equivalent to \"--vcf --fix all,breaks\"."
  type: boolean?
  inputBinding:
    prefix: --variant
- id: in_chunksize
  doc: "Input FASTA elements larger than this will be processed in smaller pieces\
    \ not to\nexceed this size (default 10000000)."
  type: boolean?
  inputBinding:
    prefix: --chunksize
- id: in_diploid
  doc: Sample is from diploid organism; will eventually affect calling of heterozygous
    SNPs
  type: boolean?
  inputBinding:
    prefix: --diploid
- id: in_fix
  doc: "A comma-separated list of categories of issues to try to fix:\n\"snps\": try\
    \ to fix individual base errors;\n\"indels\": try to fix small indels;\n\"gaps\"\
    : try to fill gaps;\n\"local\": try to detect and fix local misassemblies;\n\"\
    all\": all of the above (default);\n\"bases\": shorthand for \"snps\" and \"indels\"\
    \ (for back compatibility);\n\"none\": none of the above; new fasta file will\
    \ not be written.\nThe following are experimental fix types:\n\"amb\": fix ambiguous\
    \ bases in fasta output (to most likely alternative);\n\"breaks\": allow local\
    \ reassembly to open new gaps (with \"local\");\n\"circles\": try to close circlar\
    \ elements when used with long corrected reads;\n\"novel\": assemble novel sequence\
    \ from unaligned non-jump reads."
  type: File?
  inputBinding:
    prefix: --fix
- id: in_dump_reads
  doc: Dump reads for local re-assemblies.
  type: boolean?
  inputBinding:
    prefix: --dumpreads
- id: in_duplicates
  doc: Use reads marked as duplicates in the input BAMs (ignored by default).
  type: boolean?
  inputBinding:
    prefix: --duplicates
- id: in_iupac
  doc: Output IUPAC ambiguous base codes in the output FASTA file when appropriate.
  type: File?
  inputBinding:
    prefix: --iupac
- id: in_non_pf
  doc: Use reads which failed sequencer quality filtering (ignored by default).
  type: boolean?
  inputBinding:
    prefix: --nonpf
- id: in_targets
  doc: "Only process the specified target(s).  Targets are comma-separated, and each\
    \ target\nis a fasta element name optionally followed by a base range.\nExample:\
    \ \"scaffold00001,scaffold00002:10000-20000\" would result in processing all of\n\
    scaffold00001 and coordinates 10000-20000 of scaffold00002.\nIf \"targetlist\"\
    \ is the name of a file, each line will be treated as a target\nspecification."
  type: File?
  inputBinding:
    prefix: --targets
- id: in_threads
  doc: Degree of parallelism to use for certain processing (default 1). Experimental.
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: More verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Debugging output (implies verbose).
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_default_qual
  doc: Assumes bases are of this quality if quals are no present in input BAMs (default
    10).
  type: long?
  inputBinding:
    prefix: --defaultqual
- id: in_flank
  doc: "Controls how much of the well-aligned reads will be used; this many bases\
    \ at each\nend of the good reads will be ignored (default 10)."
  type: long?
  inputBinding:
    prefix: --flank
- id: in_gap_margin
  doc: Closed gaps must be within this number of bases of true size to be closed (100000)
  type: boolean?
  inputBinding:
    prefix: --gapmargin
- id: in_kmer_size_used
  doc: Kmer size used by internal assembler (default 47).
  type: boolean?
  inputBinding:
    prefix: --K
- id: in_min_depth
  doc: "Variants (snps and indels) will only be called if there is coverage of good\
    \ pairs\nat this depth or more; if this value is >= 1, it is an absolute depth,\
    \ if it is a\nfraction < 1, then minimum depth is computed by multiplying this\
    \ value by the mean\ncoverage for the region, with a minumum value of 5 (default\
    \ 0.1: min depth to call\nis 10% of mean coverage or 5, whichever is greater)."
  type: long?
  inputBinding:
    prefix: --mindepth
- id: in_min_gap
  doc: Minimum size for unclosed gaps (default 10)
  type: boolean?
  inputBinding:
    prefix: --mingap
- id: in_min_mq
  doc: Minimum alignment mapping quality for a read to count in pileups (default 0)
  type: boolean?
  inputBinding:
    prefix: --minmq
- id: in_min_qual
  doc: Minimum base quality to consider for pileups (default 0)
  type: boolean?
  inputBinding:
    prefix: --minqual
- id: in_no_strays
  doc: "Skip making a pass through the input BAM files to identify stray pairs, that\
    \ is,\nthose pairs in which both reads are aligned but not marked valid because\
    \ they have\ninconsistent orientation or separation. Identifying stray pairs can\
    \ help fill gaps\nand assemble larger insertions, especially of repeat content.\
    \  However, doing so\nsometimes consumes considerable memory.\n"
  type: boolean?
  inputBinding:
    prefix: --nostrays
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Use this directory for all output files.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_changes
  doc: If specified, a file listing changes in the <output>.fasta will be generated.
  type: File?
  outputBinding:
    glob: $(inputs.in_changes)
- id: out_fix
  doc: "A comma-separated list of categories of issues to try to fix:\n\"snps\": try\
    \ to fix individual base errors;\n\"indels\": try to fix small indels;\n\"gaps\"\
    : try to fill gaps;\n\"local\": try to detect and fix local misassemblies;\n\"\
    all\": all of the above (default);\n\"bases\": shorthand for \"snps\" and \"indels\"\
    \ (for back compatibility);\n\"none\": none of the above; new fasta file will\
    \ not be written.\nThe following are experimental fix types:\n\"amb\": fix ambiguous\
    \ bases in fasta output (to most likely alternative);\n\"breaks\": allow local\
    \ reassembly to open new gaps (with \"local\");\n\"circles\": try to close circlar\
    \ elements when used with long corrected reads;\n\"novel\": assemble novel sequence\
    \ from unaligned non-jump reads."
  type: File?
  outputBinding:
    glob: $(inputs.in_fix)
- id: out_iupac
  doc: Output IUPAC ambiguous base codes in the output FASTA file when appropriate.
  type: File?
  outputBinding:
    glob: $(inputs.in_iupac)
hints: []
cwlVersion: v1.1
baseCommand:
- pilon
