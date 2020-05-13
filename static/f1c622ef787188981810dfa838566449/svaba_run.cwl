class: CommandLineTool
id: svaba_run.cwl
inputs:
- id: germline
  doc: Sets recommended settings for case-only analysis (eg germline). (-I, -L5, assembles
    NM >= 3 reads)
  type: boolean
  inputBinding:
    prefix: --germline
- id: lod
  doc: LOD cutoff to classify indel as non-REF (tests AF=0 vs AF=MaxLikelihood(AF))
    [8]
  type: boolean
  inputBinding:
    prefix: --lod
- id: lod_dbsnp
  doc: LOD cutoff to classify indel as non-REF (tests AF=0 vs AF=MaxLikelihood(AF))
    at DBSnp indel site [5]
  type: boolean
  inputBinding:
    prefix: --lod-dbsnp
- id: lod_somatic
  doc: LOD cutoff to classify indel as somatic (tests AF=0 in normal vs AF=ML(0.5))
    [2.5]
  type: boolean
  inputBinding:
    prefix: --lod-somatic
- id: lod_somatic_dbsnp
  doc: LOD cutoff to classify indel as somatic (tests AF=0 in normal vs AF=ML(0.5))
    at DBSnp indel site [4]
  type: boolean
  inputBinding:
    prefix: --lod-somatic-dbsnp
- id: scale_errors
  doc: Scale the priors that a site is artifact at given repeat count. 0 means assume
    low (const) error rate [1]
  type: boolean
  inputBinding:
    prefix: --scale-errors
- id: no_inter_chrom_lookup
  doc: Skip mate lookup for inter-chr candidate events. Reduces power for translocations
    but less I/O.
  type: boolean
  inputBinding:
    prefix: --no-interchrom-lookup
- id: discordant_only
  doc: 'Only run the discordant read clustering module, skip assembly. '
  type: boolean
  inputBinding:
    prefix: --discordant-only
- id: num_assembly_rounds
  doc: Run assembler multiple times. > 1 will bootstrap the assembly. [2]
  type: boolean
  inputBinding:
    prefix: --num-assembly-rounds
- id: num_to_sample
  doc: When learning about inputs, number of reads to sample. [2,000,000]
  type: boolean
  inputBinding:
    prefix: --num-to-sample
- id: hp
  doc: Highly parallel. Don't write output until completely done. More memory, but
    avoids all thread-locks.
  type: boolean
  inputBinding:
    prefix: --hp
- id: override_reference_check
  doc: With much caution, allows user to run svaba with different reference genomes
    for BAMs and -G
  type: boolean
  inputBinding:
    prefix: --override-reference-check
- id: read_tracking
  doc: Track supporting reads by qname. Increases file sizes. [off]
  type: boolean
  inputBinding:
    prefix: --read-tracking
- id: write_extracted_reads
  doc: For the case BAM, write reads sent to assembly to a BAM file. [off]
  type: boolean
  inputBinding:
    prefix: --write-extracted-reads
- id: write_as_qg
  doc: Output an ASQG graph file for each assembly window.
  type: boolean
  inputBinding:
    prefix: --write-asqg
- id: bwa_match_score
  doc: Set the BWA-MEM match score. BWA-MEM -A [2]
  type: boolean
  inputBinding:
    prefix: --bwa-match-score
- id: gap_open_penalty
  doc: Set the BWA-MEM gap open penalty for contig to genome alignments. BWA-MEM -O
    [32]
  type: boolean
  inputBinding:
    prefix: --gap-open-penalty
- id: gap_extension_penalty
  doc: Set the BWA-MEM gap extension penalty for contig to genome alignments. BWA-MEM
    -E [1]
  type: boolean
  inputBinding:
    prefix: --gap-extension-penalty
- id: mismatch_penalty
  doc: Set the BWA-MEM mismatch penalty for contig to genome alignments. BWA-MEM -b
    [18]
  type: boolean
  inputBinding:
    prefix: --mismatch-penalty
- id: bandwidth
  doc: Set the BWA-MEM SW alignment bandwidth for contig to genome alignments. BWA-MEM
    -w [1000]
  type: boolean
  inputBinding:
    prefix: --bandwidth
- id: z_drop_off
  doc: Set the BWA-MEM SW alignment Z-dropoff for contig to genome alignments. BWA-MEM
    -d [100]
  type: boolean
  inputBinding:
    prefix: --z-dropoff
- id: reseed_trigger
  doc: Set the BWA-MEM reseed trigger for reseeding mems for contig to genome alignments.
    BWA-MEM -r [1.5]
  type: boolean
  inputBinding:
    prefix: --reseed-trigger
- id: penalty_clip_3
  doc: Set the BWA-MEM penalty for 3' clipping. [5]
  type: boolean
  inputBinding:
    prefix: --penalty-clip-3
- id: penalty_clip_5
  doc: Set the BWA-MEM penalty for 5' clipping. [5]
  type: boolean
  inputBinding:
    prefix: --penalty-clip-5
outputs: []
cwlVersion: v1.1
baseCommand:
- svaba
- run
