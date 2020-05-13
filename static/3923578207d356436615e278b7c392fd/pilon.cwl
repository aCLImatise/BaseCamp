class: CommandLineTool
id: pilon.cwl
inputs:
- id: genome
  doc: The input genome we are trying to improve, which must be the reference used
    for the bam alignments.  At least one of --frags or --jumps must also be given.
  type: string
  inputBinding:
    prefix: --genome
- id: frags
  doc: A bam file consisting of fragment paired-end alignments, aligned to the --genome
    argument using bwa or bowtie2.  This argument may be specifed more than once.
  type: string
  inputBinding:
    prefix: --frags
- id: jumps
  doc: A bam file consisting of jump (mate pair) paired-end alignments, aligned to
    the --genome argument using bwa or bowtie2.  This argument may be specifed more
    than once.
  type: string
  inputBinding:
    prefix: --jumps
- id: unpaired
  doc: A bam file consisting of unpaired alignments, aligned to the --genome argument  using
    bwa or bowtie2.  This argument may be specifed more than once.
  type: string
  inputBinding:
    prefix: --unpaired
- id: bam
  doc: A bam file of unknown type; Pilon will scan it and attempt to classify it as
    one of the above bam types.
  type: string
  inputBinding:
    prefix: --bam
- id: output
  doc: Prefix for output files
  type: string
  inputBinding:
    prefix: --output
- id: outdir
  doc: Use this directory for all output files.
  type: Directory
  inputBinding:
    prefix: --outdir
- id: changes
  doc: If specified, a file listing changes in the <output>.fasta will be generated.
  type: boolean
  inputBinding:
    prefix: --changes
- id: vcf
  doc: If specified, a vcf file will be generated
  type: boolean
  inputBinding:
    prefix: --vcf
- id: vcf_qe
  doc: If specified, the VCF will contain a QE (quality-weighted evidence) field rather
    than the default QP (quality-weighted percentage of evidence) field.
  type: boolean
  inputBinding:
    prefix: --vcfqe
- id: tracks
  doc: This options will cause many track files (*.bed, *.wig) suitable for viewing
    in a genome browser to be written.
  type: boolean
  inputBinding:
    prefix: --tracks
- id: variant
  doc: Sets up heuristics for variant calling, as opposed to assembly improvement;
    equivalent to "--vcf --fix all,breaks".
  type: boolean
  inputBinding:
    prefix: --variant
- id: chunksize
  doc: Input FASTA elements larger than this will be processed in smaller pieces not
    to exceed this size (default 10000000).
  type: boolean
  inputBinding:
    prefix: --chunksize
- id: diploid
  doc: Sample is from diploid organism; will eventually affect calling of heterozygous
    SNPs
  type: boolean
  inputBinding:
    prefix: --diploid
- id: fix
  doc: 'A comma-separated list of categories of issues to try to fix: "snps": try
    to fix individual base errors; "indels": try to fix small indels; "gaps": try
    to fill gaps; "local": try to detect and fix local misassemblies; "all": all of
    the above (default); "bases": shorthand for "snps" and "indels" (for back compatibility);
    "none": none of the above; new fasta file will not be written. The following are
    experimental fix types: "amb": fix ambiguous bases in fasta output (to most likely
    alternative); "breaks": allow local reassembly to open new gaps (with "local");
    "circles": try to close circlar elements when used with long corrected reads;
    "novel": assemble novel sequence from unaligned non-jump reads.'
  type: string
  inputBinding:
    prefix: --fix
- id: dump_reads
  doc: Dump reads for local re-assemblies.
  type: boolean
  inputBinding:
    prefix: --dumpreads
- id: duplicates
  doc: Use reads marked as duplicates in the input BAMs (ignored by default).
  type: boolean
  inputBinding:
    prefix: --duplicates
- id: iupac
  doc: Output IUPAC ambiguous base codes in the output FASTA file when appropriate.
  type: boolean
  inputBinding:
    prefix: --iupac
- id: non_pf
  doc: Use reads which failed sequencer quality filtering (ignored by default).
  type: boolean
  inputBinding:
    prefix: --nonpf
- id: targets
  doc: 'Only process the specified target(s).  Targets are comma-separated, and each
    target is a fasta element name optionally followed by a base range. Example: "scaffold00001,scaffold00002:10000-20000"
    would result in processing all of scaffold00001 and coordinates 10000-20000 of
    scaffold00002. If "targetlist" is the name of a file, each line will be treated
    as a target specification.'
  type: string
  inputBinding:
    prefix: --targets
- id: threads
  doc: Degree of parallelism to use for certain processing (default 1). Experimental.
  type: boolean
  inputBinding:
    prefix: --threads
- id: verbose
  doc: More verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: Debugging output (implies verbose).
  type: boolean
  inputBinding:
    prefix: --debug
- id: default_qual
  doc: Assumes bases are of this quality if quals are no present in input BAMs (default
    10).
  type: string
  inputBinding:
    prefix: --defaultqual
- id: flank
  doc: Controls how much of the well-aligned reads will be used; this many bases at
    each end of the good reads will be ignored (default 10).
  type: string
  inputBinding:
    prefix: --flank
- id: gap_margin
  doc: Closed gaps must be within this number of bases of true size to be closed (100000)
  type: boolean
  inputBinding:
    prefix: --gapmargin
- id: k
  doc: Kmer size used by internal assembler (default 47).
  type: boolean
  inputBinding:
    prefix: --K
- id: min_depth
  doc: 'Variants (snps and indels) will only be called if there is coverage of good
    pairs at this depth or more; if this value is >= 1, it is an absolute depth, if
    it is a fraction < 1, then minimum depth is computed by multiplying this value
    by the mean coverage for the region, with a minumum value of 5 (default 0.1: min
    depth to call  is 10% of mean coverage or 5, whichever is greater).'
  type: string
  inputBinding:
    prefix: --mindepth
- id: min_gap
  doc: Minimum size for unclosed gaps (default 10)
  type: boolean
  inputBinding:
    prefix: --mingap
- id: min_mq
  doc: Minimum alignment mapping quality for a read to count in pileups (default 0)
  type: boolean
  inputBinding:
    prefix: --minmq
- id: min_qual
  doc: Minimum base quality to consider for pileups (default 0)
  type: boolean
  inputBinding:
    prefix: --minqual
- id: no_strays
  doc: Skip making a pass through the input BAM files to identify stray pairs, that
    is, those pairs in which both reads are aligned but not marked valid because they
    have inconsistent orientation or separation. Identifying stray pairs can help
    fill gaps and assemble larger insertions, especially of repeat content.  However,
    doing so sometimes consumes considerable memory.
  type: boolean
  inputBinding:
    prefix: --nostrays
outputs: []
cwlVersion: v1.1
baseCommand:
- pilon
