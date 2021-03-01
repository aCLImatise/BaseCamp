class: CommandLineTool
id: TETyper.py.cwl
inputs:
- id: in_out_prefix
  doc: Prefix to use for output files. Required.
  type: string?
  inputBinding:
    prefix: --outprefix
- id: in_ref
  doc: "Reference sequence in fasta format. If not already\nindexed with bwa, this\
    \ will be created automatically.\nA blast database is also required, again this\
    \ will be\ncreated automatically if it does not already exist.\nRequired."
  type: string?
  inputBinding:
    prefix: --ref
- id: in_ref_db
  doc: "Blast database corresponding to reference file (this\nargument is only needed\
    \ if the blast database was\ncreated with a different name)."
  type: File?
  inputBinding:
    prefix: --refdb
- id: in_fq_one
  doc: Forward reads. Can be gzipped.
  type: long?
  inputBinding:
    prefix: --fq1
- id: in_fq_two
  doc: Reverse reads. Can be gzipped.
  type: long?
  inputBinding:
    prefix: --fq2
- id: in_fq_one_two
  doc: Interleaved forward and reverse reads.
  type: long?
  inputBinding:
    prefix: --fq12
- id: in_bam
  doc: "Bam file containing reads mapped to the given\nreference. If the reads have\
    \ already been mapped, this\noption saves time compared to specifying the reads\
    \ in\nfastq format. If this option is specified then --fq*\nare ignored."
  type: File?
  inputBinding:
    prefix: --bam
- id: in_assembly
  doc: "Use this assembly (fasta format) for detecting\nstructural variants instead\
    \ of generating a new one.\nThis option saves time if an assembly is already\n\
    available."
  type: string?
  inputBinding:
    prefix: --assembly
- id: in_spades_params
  doc: "Additional parameters for running spades assembly.\nEnclose in quotes and\
    \ precede with a space. Default: \"\n--cov-cutoff auto --disable-rr\". Ignored\
    \ if --assembly\nis specified."
  type: string?
  inputBinding:
    prefix: --spades_params
- id: in_struct_profiles
  doc: "File containing known structural variants. Tab\nseparated format with two\
    \ columns. First column is\nvariant name. Second column contains a list of\nsequence\
    \ ranges representing deletions relative to the\nreference, or \"none\" for no\
    \ deletions. Each range\nshould be written as \"startpos-endpos\", with multiple\n\
    ranges ordered by start position and separated by a\n\"|\" with no extra whitespace."
  type: File?
  inputBinding:
    prefix: --struct_profiles
- id: in_snp_profiles
  doc: "File containing known SNP profiles. Tab separated\nformat with three columns.\
    \ First column: variant name,\nsecond column: homozygous SNPs, third column:\n\
    heterozygous SNPs. SNPs should be written as\n\"refPOSalt\", where \"POS\" is\
    \ the position of that SNP\nwithin the reference, \"ref\" is the reference base\
    \ at\nthat position (A, C, G or T), and \"alt\" is the variant\nbase at that position\
    \ (A, C, G or T for a homozygous\nSNP; M, R, W, S, Y or K for a heterozygous SNP).\n\
    Multiple SNPs of the same type (homozygous or\nheterozygous) should be ordered\
    \ by position and\nseparated by a \"|\". \"none\" indicates no SNPs of the\ngiven\
    \ type."
  type: File?
  inputBinding:
    prefix: --snp_profiles
- id: in_flank_len
  doc: Length of flanking region to extract. Required.
  type: long?
  inputBinding:
    prefix: --flank_len
- id: in_min_reads
  doc: "Minimum read number for including a specific flanking\nsequence. Default 10."
  type: long?
  inputBinding:
    prefix: --min_reads
- id: in_min_each_strand
  doc: "Minimum read number for each strand for including a\nspecific flanking sequence.\
    \ Default 1."
  type: long?
  inputBinding:
    prefix: --min_each_strand
- id: in_min_mapped_len
  doc: "Minimum length of mapping for a read to be used in\ndetermining flanking sequences.\
    \ Higher values are more\nrobust to spurious mapping. Lower values will recover\n\
    more reads. Default 30."
  type: long?
  inputBinding:
    prefix: --min_mapped_len
- id: in_min_qual
  doc: "Minimum quality value across extracted flanking\nsequence. Default 10."
  type: long?
  inputBinding:
    prefix: --min_qual
- id: in_show_region
  doc: "Display presence/absence for a specific region of\ninterest within the reference\
    \ (e.g. to display blaKPC\npresence/absence with the Tn4401b-1 reference, use\n\
    \"7202-8083\")"
  type: long?
  inputBinding:
    prefix: --show_region
- id: in_threads
  doc: "Number of threads to use for mapping and assembly\nsteps. Default: 1"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbosity
  doc: "Verbosity level for logging to stderr. 1 = ERROR, 2 =\nWARNING, 3 = INFO,\
    \ 4 = DUBUG. Default: 3."
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_no_overwrite
  doc: "Flag to prevent accidental overwriting of previous\noutput files. In this\
    \ mode, the pipeline checks for a\nlog file named according to the given output\
    \ prefix.\nIf it exists then the pipeline exits without modifying\nany files.\n"
  type: File?
  inputBinding:
    prefix: --no_overwrite
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_no_overwrite
  doc: "Flag to prevent accidental overwriting of previous\noutput files. In this\
    \ mode, the pipeline checks for a\nlog file named according to the given output\
    \ prefix.\nIf it exists then the pipeline exits without modifying\nany files.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_no_overwrite)
hints: []
cwlVersion: v1.1
baseCommand:
- TETyper.py
