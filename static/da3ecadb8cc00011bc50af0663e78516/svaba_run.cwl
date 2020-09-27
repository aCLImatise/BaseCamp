class: CommandLineTool
id: svaba_run.cwl
inputs:
- id: in_verbose
  doc: 'Select verbosity level (0-4). Default: 0'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_threads
  doc: 'Use NUM threads to run svaba. Default: 1'
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_id_string
  doc: String specifying the analysis ID to be used as part of ID common.
  type: boolean
  inputBinding:
    prefix: --id-string
- id: in_reference_genome
  doc: Path to indexed reference genome to be used by BWA-MEM.
  type: boolean
  inputBinding:
    prefix: --reference-genome
- id: in_case_bam
  doc: Case BAM/CRAM/SAM file (eg tumor). Can input multiple.
  type: boolean
  inputBinding:
    prefix: --case-bam
- id: in_control_bam
  doc: (optional) Control BAM/CRAM/SAM file (eg normal). Can input multiple.
  type: boolean
  inputBinding:
    prefix: --control-bam
- id: in_region
  doc: Run on targeted intervals. Accepts BED file or Samtools-style string
  type: boolean
  inputBinding:
    prefix: --region
- id: in_germline
  doc: Sets recommended settings for case-only analysis (eg germline). (-I, -L5, assembles
    NM >= 3 reads)
  type: boolean
  inputBinding:
    prefix: --germline
- id: in_lod
  doc: LOD cutoff to classify indel as non-REF (tests AF=0 vs AF=MaxLikelihood(AF))
    [8]
  type: boolean
  inputBinding:
    prefix: --lod
- id: in_lod_dbsnp
  doc: LOD cutoff to classify indel as non-REF (tests AF=0 vs AF=MaxLikelihood(AF))
    at DBSnp indel site [5]
  type: boolean
  inputBinding:
    prefix: --lod-dbsnp
- id: in_lod_somatic
  doc: LOD cutoff to classify indel as somatic (tests AF=0 in normal vs AF=ML(0.5))
    [2.5]
  type: boolean
  inputBinding:
    prefix: --lod-somatic
- id: in_lod_somatic_dbsnp
  doc: LOD cutoff to classify indel as somatic (tests AF=0 in normal vs AF=ML(0.5))
    at DBSnp indel site [4]
  type: boolean
  inputBinding:
    prefix: --lod-somatic-dbsnp
- id: in_scale_errors
  doc: Scale the priors that a site is artifact at given repeat count. 0 means assume
    low (const) error rate [1]
  type: boolean
  inputBinding:
    prefix: --scale-errors
- id: in_mate_lookup_min
  doc: Minimum number of somatic reads required to attempt mate-region lookup [3]
  type: boolean
  inputBinding:
    prefix: --mate-lookup-min
- id: in_disc_sd_cut_off
  doc: Number of standard deviations of calculated insert-size distribution to consider
    discordant. [3.92]
  type: boolean
  inputBinding:
    prefix: --disc-sd-cutoff
- id: in_chunk_size
  doc: Size of a local assembly window (in bp). Set 0 for whole-BAM in one assembly.
    [25000]
  type: boolean
  inputBinding:
    prefix: --chunk-size
- id: in_max_reads
  doc: Max total read count to read in from assembly region. Set 0 to turn off. [50000]
  type: boolean
  inputBinding:
    prefix: --max-reads
- id: in_max_reads_mate_region
  doc: Max weird reads to include from a mate lookup region. [400]
  type: boolean
  inputBinding:
    prefix: --max-reads-mate-region
- id: in_max_coverage
  doc: Max read coverage to send to assembler (per BAM). Subsample reads if exceeded.
    [500]
  type: boolean
  inputBinding:
    prefix: --max-coverage
- id: in_no_inter_chrom_lookup
  doc: Skip mate lookup for inter-chr candidate events. Reduces power for translocations
    but less I/O.
  type: boolean
  inputBinding:
    prefix: --no-interchrom-lookup
- id: in_discordant_only
  doc: Only run the discordant read clustering module, skip assembly.
  type: boolean
  inputBinding:
    prefix: --discordant-only
- id: in_num_assembly_rounds
  doc: Run assembler multiple times. > 1 will bootstrap the assembly. [2]
  type: boolean
  inputBinding:
    prefix: --num-assembly-rounds
- id: in_num_to_sample
  doc: When learning about inputs, number of reads to sample. [2,000,000]
  type: boolean
  inputBinding:
    prefix: --num-to-sample
- id: in_hp
  doc: Highly parallel. Don't write output until completely done. More memory, but
    avoids all thread-locks.
  type: boolean
  inputBinding:
    prefix: --hp
- id: in_override_reference_check
  doc: With much caution, allows user to run svaba with different reference genomes
    for BAMs and -G
  type: boolean
  inputBinding:
    prefix: --override-reference-check
- id: in_g_zip
  doc: Gzip and tabix the output VCF files. [off]
  type: boolean
  inputBinding:
    prefix: --g-zip
- id: in_all_contigs
  doc: Output all contigs that were assembled, regardless of mapping or length. [off]
  type: boolean
  inputBinding:
    prefix: --all-contigs
- id: in_read_tracking
  doc: Track supporting reads by qname. Increases file sizes. [off]
  type: boolean
  inputBinding:
    prefix: --read-tracking
- id: in_write_extracted_reads
  doc: For the case BAM, write reads sent to assembly to a BAM file. [off]
  type: boolean
  inputBinding:
    prefix: --write-extracted-reads
- id: in_dbsnp_vcf
  doc: DBsnp database (VCF) to compare indels against
  type: boolean
  inputBinding:
    prefix: --dbsnp-vcf
- id: in_blacklist
  doc: BED-file with blacklisted regions to not extract any reads from.
  type: boolean
  inputBinding:
    prefix: --blacklist
- id: in_microbial_genome
  doc: Path to indexed reference genome of microbial sequences to be used by BWA-MEM
    to filter reads.
  type: boolean
  inputBinding:
    prefix: --microbial-genome
- id: in_germline_sv_database
  doc: BED file containing sites of known germline SVs. Used as additional filter
    for somatic SV detection
  type: boolean
  inputBinding:
    prefix: --germline-sv-database
- id: in_simple_seq_database
  doc: BED file containing sites of simple DNA that can confuse the contig re-alignment.
  type: boolean
  inputBinding:
    prefix: --simple-seq-database
- id: in_min_overlap
  doc: 'Minimum read overlap, an SGA parameter. Default: 0.4* readlength'
  type: boolean
  inputBinding:
    prefix: --min-overlap
- id: in_error_rate
  doc: Fractional difference two reads can have to overlap. See SGA. 0 is fast, but
    requires error correcting. [0]
  type: boolean
  inputBinding:
    prefix: --error-rate
- id: in_ec_correct_type
  doc: (f) Fermi-kit BFC correction, (s) Kmer-correction from SGA, (0) no correction
    (then suggest non-zero -e) [f]
  type: boolean
  inputBinding:
    prefix: --ec-correct-type
- id: in_ec_subsample
  doc: Learn from fraction of non-weird reads during error-correction. Lower number
    = faster compute [0.5]
  type: boolean
  inputBinding:
    prefix: --ec-subsample
- id: in_write_as_qg
  doc: Output an ASQG graph file for each assembly window.
  type: File
  inputBinding:
    prefix: --write-asqg
- id: in_bwa_match_score
  doc: Set the BWA-MEM match score. BWA-MEM -A [2]
  type: boolean
  inputBinding:
    prefix: --bwa-match-score
- id: in_gap_open_penalty
  doc: Set the BWA-MEM gap open penalty for contig to genome alignments. BWA-MEM -O
    [32]
  type: boolean
  inputBinding:
    prefix: --gap-open-penalty
- id: in_gap_extension_penalty
  doc: Set the BWA-MEM gap extension penalty for contig to genome alignments. BWA-MEM
    -E [1]
  type: boolean
  inputBinding:
    prefix: --gap-extension-penalty
- id: in_mismatch_penalty
  doc: Set the BWA-MEM mismatch penalty for contig to genome alignments. BWA-MEM -b
    [18]
  type: boolean
  inputBinding:
    prefix: --mismatch-penalty
- id: in_bandwidth
  doc: Set the BWA-MEM SW alignment bandwidth for contig to genome alignments. BWA-MEM
    -w [1000]
  type: boolean
  inputBinding:
    prefix: --bandwidth
- id: in_z_drop_off
  doc: Set the BWA-MEM SW alignment Z-dropoff for contig to genome alignments. BWA-MEM
    -d [100]
  type: boolean
  inputBinding:
    prefix: --z-dropoff
- id: in_reseed_trigger
  doc: Set the BWA-MEM reseed trigger for reseeding mems for contig to genome alignments.
    BWA-MEM -r [1.5]
  type: boolean
  inputBinding:
    prefix: --reseed-trigger
- id: in_penalty_clip_three
  doc: Set the BWA-MEM penalty for 3' clipping. [5]
  type: boolean
  inputBinding:
    prefix: --penalty-clip-3
- id: in_penalty_clip_five
  doc: Set the BWA-MEM penalty for 5' clipping. [5]
  type: boolean
  inputBinding:
    prefix: --penalty-clip-5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_as_qg
  doc: Output an ASQG graph file for each assembly window.
  type: File
  outputBinding:
    glob: $(inputs.in_write_as_qg)
cwlVersion: v1.1
baseCommand:
- svaba
- run
