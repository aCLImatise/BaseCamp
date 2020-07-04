class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gmap_build.cwl
inputs:
- id: km_er
  doc: 'k-mer value for genomic index (allowed: 15 or less, default is 15)'
  type: long
  inputBinding:
    prefix: --kmer
- id: sampling_interval_genomoe
  doc: 'sampling interval for genomoe (allowed: 1-3, default 3)'
  type: long
  inputBinding:
    prefix: -q
- id: sort
  doc: 'Sort chromosomes using given method: none - use chromosomes as found in FASTA
    file(s) (default) alpha - sort chromosomes alphabetically (chr10 before chr 1)
    numeric-alpha - chr1, chr1U, chr2, chrM, chrU, chrX, chrY chrom - chr1, chr2,
    chrM, chrX, chrY, chr1U, chrU names - sort chromosomes based on file provided
    to --names flag'
  type: string
  inputBinding:
    prefix: --sort
- id: gunzip
  doc: Files are gzipped, so need to gunzip each file first
  type: boolean
  inputBinding:
    prefix: --gunzip
- id: fast_a_pipe
  doc: Interpret argument as a command, instead of a list of FASTA files
  type: string
  inputBinding:
    prefix: --fasta-pipe
- id: fast_q
  doc: Files are in FASTQ format
  type: boolean
  inputBinding:
    prefix: --fastq
- id: rev_comp
  doc: Reverse complement all contigs
  type: boolean
  inputBinding:
    prefix: --revcomp
- id: wait_sleep_seconds
  doc: Wait (sleep) this many seconds after each step (default 2)
  type: long
  inputBinding:
    prefix: -w
- id: circular
  doc: Circular chromosomes (either a list of chromosomes separated by a comma, or
    a filename containing circular chromosomes, one per line).  If you use the --names
    feature, then you should use the original name of the chromosome, not the substitute
    name, for this option.
  type: string
  inputBinding:
    prefix: --circular
- id: alt_scaffold
  doc: 'File with alt scaffold info, listing alternate scaffolds, one per line, tab-delimited,
    with the following fields: (1) alt_scaf_acc, (2) parent_name, (3) orientation,
    (4) alt_scaf_start, (5) alt_scaf_stop, (6) parent_start, (7) parent_end.'
  type: string
  inputBinding:
    prefix: --altscaffold
- id: n_messages
  doc: Maximum number of messages (warnings, contig reports) to report (default 50)
  type: long
  inputBinding:
    prefix: --nmessages
- id: md_flag
  doc: Use MD file from NCBI for mapping contigs to chromosomal coordinates
  type: string
  inputBinding:
    prefix: --mdflag
- id: contigs_are_mapped
  doc: Find a chromosomal region in each FASTA header line. Useful for contigs that
    have been mapped to chromosomal coordinates.  Ignored if the --mdflag is provided.
  type: boolean
  inputBinding:
    prefix: --contigs-are-mapped
- id: transcriptome_db
  doc: Transcriptome name
  type: string
  inputBinding:
    prefix: --transcriptomedb
- id: transcripts
  doc: FASTA file containing transcripts (required if specifying --transcriptomedb)
  type: File
  inputBinding:
    prefix: --transcripts
- id: n_threads
  doc: Number of threads for GMAP alignment of transcripts to genome (default 8)
  type: long
  inputBinding:
    prefix: --nthreads
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome_fast_a_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gmap_build
