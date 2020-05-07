class: CommandLineTool
id: TETyper.py.cwl
inputs:
- id: out_prefix
  doc: Prefix to use for output files. Required.
  type: string
  inputBinding:
    prefix: --outprefix
- id: ref
  doc: Reference sequence in fasta format. If not already indexed with bwa, this will
    be created automatically. A blast database is also required, again this will be
    created automatically if it does not already exist. Required.
  type: string
  inputBinding:
    prefix: --ref
- id: ref_db
  doc: Blast database corresponding to reference file (this argument is only needed
    if the blast database was created with a different name).
  type: string
  inputBinding:
    prefix: --refdb
- id: fq1
  doc: Forward reads. Can be gzipped.
  type: string
  inputBinding:
    prefix: --fq1
- id: fq2
  doc: Reverse reads. Can be gzipped.
  type: string
  inputBinding:
    prefix: --fq2
- id: fq12
  doc: Interleaved forward and reverse reads.
  type: string
  inputBinding:
    prefix: --fq12
- id: bam
  doc: Bam file containing reads mapped to the given reference. If the reads have
    already been mapped, this option saves time compared to specifying the reads in
    fastq format. If this option is specified then --fq* are ignored.
  type: string
  inputBinding:
    prefix: --bam
- id: assembly
  doc: Use this assembly (fasta format) for detecting structural variants instead
    of generating a new one. This option saves time if an assembly is already available.
  type: string
  inputBinding:
    prefix: --assembly
- id: spades_params
  doc: 'Additional parameters for running spades assembly. Enclose in quotes and precede
    with a space. Default: " --cov-cutoff auto --disable-rr". Ignored if --assembly
    is specified.'
  type: string
  inputBinding:
    prefix: --spades_params
- id: struct_profiles
  doc: File containing known structural variants. Tab separated format with two columns.
    First column is variant name. Second column contains a list of sequence ranges
    representing deletions relative to the reference, or "none" for no deletions.
    Each range should be written as "startpos-endpos", with multiple ranges ordered
    by start position and separated by a "|" with no extra whitespace.
  type: string
  inputBinding:
    prefix: --struct_profiles
- id: snp_profiles
  doc: 'File containing known SNP profiles. Tab separated format with three columns.
    First column: variant name, second column: homozygous SNPs, third column: heterozygous
    SNPs. SNPs should be written as "refPOSalt", where "POS" is the position of that
    SNP within the reference, "ref" is the reference base at that position (A, C,
    G or T), and "alt" is the variant base at that position (A, C, G or T for a homozygous
    SNP; M, R, W, S, Y or K for a heterozygous SNP). Multiple SNPs of the same type
    (homozygous or heterozygous) should be ordered by position and separated by a
    "|". "none" indicates no SNPs of the given type.'
  type: string
  inputBinding:
    prefix: --snp_profiles
- id: flank_len
  doc: Length of flanking region to extract. Required.
  type: string
  inputBinding:
    prefix: --flank_len
- id: min_reads
  doc: Minimum read number for including a specific flanking sequence. Default 10.
  type: long
  inputBinding:
    prefix: --min_reads
- id: min_each_strand
  doc: Minimum read number for each strand for including a specific flanking sequence.
    Default 1.
  type: long
  inputBinding:
    prefix: --min_each_strand
- id: min_mapped_len
  doc: Minimum length of mapping for a read to be used in determining flanking sequences.
    Higher values are more robust to spurious mapping. Lower values will recover more
    reads. Default 30.
  type: long
  inputBinding:
    prefix: --min_mapped_len
- id: min_qual
  doc: Minimum quality value across extracted flanking sequence. Default 10.
  type: long
  inputBinding:
    prefix: --min_qual
- id: show_region
  doc: Display presence/absence for a specific region of interest within the reference
    (e.g. to display blaKPC presence/absence with the Tn4401b-1 reference, use "7202-8083")
  type: string
  inputBinding:
    prefix: --show_region
- id: threads
  doc: 'Number of threads to use for mapping and assembly steps. Default: 1'
  type: string
  inputBinding:
    prefix: --threads
- id: v
  doc: '{1,2,3,4}, --verbosity {1,2,3,4} Verbosity level for logging to stderr. 1
    = ERROR, 2 = WARNING, 3 = INFO, 4 = DUBUG. Default: 3.'
  type: boolean
  inputBinding:
    prefix: -v
- id: no_overwrite
  doc: Flag to prevent accidental overwriting of previous output files. In this mode,
    the pipeline checks for a log file named according to the given output prefix.
    If it exists then the pipeline exits without modifying any files.
  type: boolean
  inputBinding:
    prefix: --no_overwrite
outputs: []
cwlVersion: v1.1
baseCommand:
- TETyper.py
