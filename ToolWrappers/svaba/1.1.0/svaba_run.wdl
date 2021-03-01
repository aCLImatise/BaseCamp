version 1.0

task SvabaRun {
  input {
    Boolean? verbose
    Boolean? threads
    Boolean? id_string
    Boolean? reference_genome
    Boolean? case_bam
    Boolean? control_bam
    Boolean? region
    Boolean? germline
    Boolean? lod
    Boolean? lod_dbsnp
    Boolean? lod_somatic
    Boolean? lod_somatic_dbsnp
    Boolean? scale_errors
    Boolean? mate_lookup_min
    Boolean? disc_sd_cut_off
    Boolean? chunk_size
    Boolean? max_reads
    Boolean? max_reads_mate_region
    Boolean? max_coverage
    Boolean? no_inter_chrom_lookup
    Boolean? discordant_only
    Boolean? num_assembly_rounds
    Boolean? num_to_sample
    Boolean? hp
    Boolean? override_reference_check
    Boolean? g_zip
    Boolean? all_contigs
    Boolean? read_tracking
    Boolean? write_extracted_reads
    Boolean? dbsnp_vcf
    Boolean? blacklist
    Boolean? microbial_genome
    Boolean? germline_sv_database
    Boolean? simple_seq_database
    Boolean? min_overlap
    Boolean? error_rate
    Boolean? ec_correct_type
    Boolean? ec_subsample
    File? write_as_qg
    Boolean? bwa_match_score
    Boolean? gap_open_penalty
    Boolean? gap_extension_penalty
    Boolean? mismatch_penalty
    Boolean? bandwidth
    Boolean? z_drop_off
    Boolean? reseed_trigger
    Boolean? penalty_clip_three
    Boolean? penalty_clip_five
  }
  command <<<
    svaba run \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (id_string) then "--id-string" else ""} \
      ~{if (reference_genome) then "--reference-genome" else ""} \
      ~{if (case_bam) then "--case-bam" else ""} \
      ~{if (control_bam) then "--control-bam" else ""} \
      ~{if (region) then "--region" else ""} \
      ~{if (germline) then "--germline" else ""} \
      ~{if (lod) then "--lod" else ""} \
      ~{if (lod_dbsnp) then "--lod-dbsnp" else ""} \
      ~{if (lod_somatic) then "--lod-somatic" else ""} \
      ~{if (lod_somatic_dbsnp) then "--lod-somatic-dbsnp" else ""} \
      ~{if (scale_errors) then "--scale-errors" else ""} \
      ~{if (mate_lookup_min) then "--mate-lookup-min" else ""} \
      ~{if (disc_sd_cut_off) then "--disc-sd-cutoff" else ""} \
      ~{if (chunk_size) then "--chunk-size" else ""} \
      ~{if (max_reads) then "--max-reads" else ""} \
      ~{if (max_reads_mate_region) then "--max-reads-mate-region" else ""} \
      ~{if (max_coverage) then "--max-coverage" else ""} \
      ~{if (no_inter_chrom_lookup) then "--no-interchrom-lookup" else ""} \
      ~{if (discordant_only) then "--discordant-only" else ""} \
      ~{if (num_assembly_rounds) then "--num-assembly-rounds" else ""} \
      ~{if (num_to_sample) then "--num-to-sample" else ""} \
      ~{if (hp) then "--hp" else ""} \
      ~{if (override_reference_check) then "--override-reference-check" else ""} \
      ~{if (g_zip) then "--g-zip" else ""} \
      ~{if (all_contigs) then "--all-contigs" else ""} \
      ~{if (read_tracking) then "--read-tracking" else ""} \
      ~{if (write_extracted_reads) then "--write-extracted-reads" else ""} \
      ~{if (dbsnp_vcf) then "--dbsnp-vcf" else ""} \
      ~{if (blacklist) then "--blacklist" else ""} \
      ~{if (microbial_genome) then "--microbial-genome" else ""} \
      ~{if (germline_sv_database) then "--germline-sv-database" else ""} \
      ~{if (simple_seq_database) then "--simple-seq-database" else ""} \
      ~{if (min_overlap) then "--min-overlap" else ""} \
      ~{if (error_rate) then "--error-rate" else ""} \
      ~{if (ec_correct_type) then "--ec-correct-type" else ""} \
      ~{if (ec_subsample) then "--ec-subsample" else ""} \
      ~{if (write_as_qg) then "--write-asqg" else ""} \
      ~{if (bwa_match_score) then "--bwa-match-score" else ""} \
      ~{if (gap_open_penalty) then "--gap-open-penalty" else ""} \
      ~{if (gap_extension_penalty) then "--gap-extension-penalty" else ""} \
      ~{if (mismatch_penalty) then "--mismatch-penalty" else ""} \
      ~{if (bandwidth) then "--bandwidth" else ""} \
      ~{if (z_drop_off) then "--z-dropoff" else ""} \
      ~{if (reseed_trigger) then "--reseed-trigger" else ""} \
      ~{if (penalty_clip_three) then "--penalty-clip-3" else ""} \
      ~{if (penalty_clip_five) then "--penalty-clip-5" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Select verbosity level (0-4). Default: 0"
    threads: "Use NUM threads to run svaba. Default: 1"
    id_string: "String specifying the analysis ID to be used as part of ID common."
    reference_genome: "Path to indexed reference genome to be used by BWA-MEM."
    case_bam: "Case BAM/CRAM/SAM file (eg tumor). Can input multiple."
    control_bam: "(optional) Control BAM/CRAM/SAM file (eg normal). Can input multiple."
    region: "Run on targeted intervals. Accepts BED file or Samtools-style string"
    germline: "Sets recommended settings for case-only analysis (eg germline). (-I, -L5, assembles NM >= 3 reads)"
    lod: "LOD cutoff to classify indel as non-REF (tests AF=0 vs AF=MaxLikelihood(AF)) [8]"
    lod_dbsnp: "LOD cutoff to classify indel as non-REF (tests AF=0 vs AF=MaxLikelihood(AF)) at DBSnp indel site [5]"
    lod_somatic: "LOD cutoff to classify indel as somatic (tests AF=0 in normal vs AF=ML(0.5)) [2.5]"
    lod_somatic_dbsnp: "LOD cutoff to classify indel as somatic (tests AF=0 in normal vs AF=ML(0.5)) at DBSnp indel site [4]"
    scale_errors: "Scale the priors that a site is artifact at given repeat count. 0 means assume low (const) error rate [1]"
    mate_lookup_min: "Minimum number of somatic reads required to attempt mate-region lookup [3]"
    disc_sd_cut_off: "Number of standard deviations of calculated insert-size distribution to consider discordant. [3.92]"
    chunk_size: "Size of a local assembly window (in bp). Set 0 for whole-BAM in one assembly. [25000]"
    max_reads: "Max total read count to read in from assembly region. Set 0 to turn off. [50000]"
    max_reads_mate_region: "Max weird reads to include from a mate lookup region. [400]"
    max_coverage: "Max read coverage to send to assembler (per BAM). Subsample reads if exceeded. [500]"
    no_inter_chrom_lookup: "Skip mate lookup for inter-chr candidate events. Reduces power for translocations but less I/O."
    discordant_only: "Only run the discordant read clustering module, skip assembly."
    num_assembly_rounds: "Run assembler multiple times. > 1 will bootstrap the assembly. [2]"
    num_to_sample: "When learning about inputs, number of reads to sample. [2,000,000]"
    hp: "Highly parallel. Don't write output until completely done. More memory, but avoids all thread-locks."
    override_reference_check: "With much caution, allows user to run svaba with different reference genomes for BAMs and -G"
    g_zip: "Gzip and tabix the output VCF files. [off]"
    all_contigs: "Output all contigs that were assembled, regardless of mapping or length. [off]"
    read_tracking: "Track supporting reads by qname. Increases file sizes. [off]"
    write_extracted_reads: "For the case BAM, write reads sent to assembly to a BAM file. [off]"
    dbsnp_vcf: "DBsnp database (VCF) to compare indels against"
    blacklist: "BED-file with blacklisted regions to not extract any reads from."
    microbial_genome: "Path to indexed reference genome of microbial sequences to be used by BWA-MEM to filter reads."
    germline_sv_database: "BED file containing sites of known germline SVs. Used as additional filter for somatic SV detection"
    simple_seq_database: "BED file containing sites of simple DNA that can confuse the contig re-alignment."
    min_overlap: "Minimum read overlap, an SGA parameter. Default: 0.4* readlength"
    error_rate: "Fractional difference two reads can have to overlap. See SGA. 0 is fast, but requires error correcting. [0]"
    ec_correct_type: "(f) Fermi-kit BFC correction, (s) Kmer-correction from SGA, (0) no correction (then suggest non-zero -e) [f]"
    ec_subsample: "Learn from fraction of non-weird reads during error-correction. Lower number = faster compute [0.5]"
    write_as_qg: "Output an ASQG graph file for each assembly window."
    bwa_match_score: "Set the BWA-MEM match score. BWA-MEM -A [2]"
    gap_open_penalty: "Set the BWA-MEM gap open penalty for contig to genome alignments. BWA-MEM -O [32]"
    gap_extension_penalty: "Set the BWA-MEM gap extension penalty for contig to genome alignments. BWA-MEM -E [1]"
    mismatch_penalty: "Set the BWA-MEM mismatch penalty for contig to genome alignments. BWA-MEM -b [18]"
    bandwidth: "Set the BWA-MEM SW alignment bandwidth for contig to genome alignments. BWA-MEM -w [1000]"
    z_drop_off: "Set the BWA-MEM SW alignment Z-dropoff for contig to genome alignments. BWA-MEM -d [100]"
    reseed_trigger: "Set the BWA-MEM reseed trigger for reseeding mems for contig to genome alignments. BWA-MEM -r [1.5]"
    penalty_clip_three: "Set the BWA-MEM penalty for 3' clipping. [5]"
    penalty_clip_five: "Set the BWA-MEM penalty for 5' clipping. [5]"
  }
  output {
    File out_stdout = stdout()
    File out_write_as_qg = "${in_write_as_qg}"
  }
}