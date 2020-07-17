version 1.0

task Pilon {
  input {
    String? genome
    String? frags
    String? jumps
    String? unpaired
    String? bam
    String? prefix_output_files
    Directory? outdir
    Boolean? changes
    Boolean? vcf
    Boolean? vcf_qe
    Boolean? tracks
    Boolean? variant
    Boolean? chunksize
    Boolean? diploid
    String? fix
    Boolean? dump_reads
    Boolean? duplicates
    Boolean? iupac
    Boolean? non_pf
    String? targets
    Boolean? threads
    Boolean? verbose
    Boolean? debug
    String? default_qual
    String? flank
    Boolean? gap_margin
    Boolean? kmer_size_used
    String? min_depth
    Boolean? min_gap
    Boolean? min_mq
    Boolean? min_qual
    Boolean? no_strays
  }
  command <<<
    pilon \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(frags) then ("--frags " +  '"' + frags + '"') else ""} \
      ~{if defined(jumps) then ("--jumps " +  '"' + jumps + '"') else ""} \
      ~{if defined(unpaired) then ("--unpaired " +  '"' + unpaired + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(prefix_output_files) then ("--output " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{true="--changes" false="" changes} \
      ~{true="--vcf" false="" vcf} \
      ~{true="--vcfqe" false="" vcf_qe} \
      ~{true="--tracks" false="" tracks} \
      ~{true="--variant" false="" variant} \
      ~{true="--chunksize" false="" chunksize} \
      ~{true="--diploid" false="" diploid} \
      ~{if defined(fix) then ("--fix " +  '"' + fix + '"') else ""} \
      ~{true="--dumpreads" false="" dump_reads} \
      ~{true="--duplicates" false="" duplicates} \
      ~{true="--iupac" false="" iupac} \
      ~{true="--nonpf" false="" non_pf} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{true="--threads" false="" threads} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug} \
      ~{if defined(default_qual) then ("--defaultqual " +  '"' + default_qual + '"') else ""} \
      ~{if defined(flank) then ("--flank " +  '"' + flank + '"') else ""} \
      ~{true="--gapmargin" false="" gap_margin} \
      ~{true="--K" false="" kmer_size_used} \
      ~{if defined(min_depth) then ("--mindepth " +  '"' + min_depth + '"') else ""} \
      ~{true="--mingap" false="" min_gap} \
      ~{true="--minmq" false="" min_mq} \
      ~{true="--minqual" false="" min_qual} \
      ~{true="--nostrays" false="" no_strays}
  >>>
  parameter_meta {
    genome: "The input genome we are trying to improve, which must be the reference used for the bam alignments.  At least one of --frags or --jumps must also be given."
    frags: "A bam file consisting of fragment paired-end alignments, aligned to the --genome argument using bwa or bowtie2.  This argument may be specifed more than once."
    jumps: "A bam file consisting of jump (mate pair) paired-end alignments, aligned to the --genome argument using bwa or bowtie2.  This argument may be specifed more than once."
    unpaired: "A bam file consisting of unpaired alignments, aligned to the --genome argument  using bwa or bowtie2.  This argument may be specifed more than once."
    bam: "A bam file of unknown type; Pilon will scan it and attempt to classify it as one of the above bam types."
    prefix_output_files: "Prefix for output files"
    outdir: "Use this directory for all output files."
    changes: "If specified, a file listing changes in the <output>.fasta will be generated."
    vcf: "If specified, a vcf file will be generated"
    vcf_qe: "If specified, the VCF will contain a QE (quality-weighted evidence) field rather than the default QP (quality-weighted percentage of evidence) field."
    tracks: "This options will cause many track files (*.bed, *.wig) suitable for viewing in a genome browser to be written."
    variant: "Sets up heuristics for variant calling, as opposed to assembly improvement; equivalent to \"--vcf --fix all,breaks\"."
    chunksize: "Input FASTA elements larger than this will be processed in smaller pieces not to exceed this size (default 10000000)."
    diploid: "Sample is from diploid organism; will eventually affect calling of heterozygous SNPs"
    fix: "A comma-separated list of categories of issues to try to fix: \"snps\": try to fix individual base errors; \"indels\": try to fix small indels; \"gaps\": try to fill gaps; \"local\": try to detect and fix local misassemblies; \"all\": all of the above (default); \"bases\": shorthand for \"snps\" and \"indels\" (for back compatibility); \"none\": none of the above; new fasta file will not be written. The following are experimental fix types: \"amb\": fix ambiguous bases in fasta output (to most likely alternative); \"breaks\": allow local reassembly to open new gaps (with \"local\"); \"circles\": try to close circlar elements when used with long corrected reads; \"novel\": assemble novel sequence from unaligned non-jump reads."
    dump_reads: "Dump reads for local re-assemblies."
    duplicates: "Use reads marked as duplicates in the input BAMs (ignored by default)."
    iupac: "Output IUPAC ambiguous base codes in the output FASTA file when appropriate."
    non_pf: "Use reads which failed sequencer quality filtering (ignored by default)."
    targets: "Only process the specified target(s).  Targets are comma-separated, and each target is a fasta element name optionally followed by a base range. Example: \"scaffold00001,scaffold00002:10000-20000\" would result in processing all of scaffold00001 and coordinates 10000-20000 of scaffold00002. If \"targetlist\" is the name of a file, each line will be treated as a target specification."
    threads: "Degree of parallelism to use for certain processing (default 1). Experimental."
    verbose: "More verbose output."
    debug: "Debugging output (implies verbose)."
    default_qual: "Assumes bases are of this quality if quals are no present in input BAMs (default 10)."
    flank: "Controls how much of the well-aligned reads will be used; this many bases at each end of the good reads will be ignored (default 10)."
    gap_margin: "Closed gaps must be within this number of bases of true size to be closed (100000)"
    kmer_size_used: "Kmer size used by internal assembler (default 47)."
    min_depth: "Variants (snps and indels) will only be called if there is coverage of good pairs at this depth or more; if this value is >= 1, it is an absolute depth, if it is a fraction < 1, then minimum depth is computed by multiplying this value by the mean coverage for the region, with a minumum value of 5 (default 0.1: min depth to call  is 10% of mean coverage or 5, whichever is greater)."
    min_gap: "Minimum size for unclosed gaps (default 10)"
    min_mq: "Minimum alignment mapping quality for a read to count in pileups (default 0)"
    min_qual: "Minimum base quality to consider for pileups (default 0)"
    no_strays: "Skip making a pass through the input BAM files to identify stray pairs, that is, those pairs in which both reads are aligned but not marked valid because they have inconsistent orientation or separation. Identifying stray pairs can help fill gaps and assemble larger insertions, especially of repeat content.  However, doing so sometimes consumes considerable memory."
  }
}