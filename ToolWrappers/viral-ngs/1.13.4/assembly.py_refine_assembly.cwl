class: CommandLineTool
id: assembly.py_refine_assembly.cwl
inputs:
- id: in_already_realigned_bam
  doc: "BAM with reads that are already aligned to inFasta.\nThis bypasses the alignment\
    \ process by novoalign and\ninstead uses the given BAM to make an assembly. When\n\
    set, outBam is ignored."
  type: string
  inputBinding:
    prefix: --already_realigned_bam
- id: in_out_bam
  doc: "Reads aligned to inFasta. Unaligned and duplicate\nreads have been removed.\
    \ GATK indel realigned."
  type: string
  inputBinding:
    prefix: --outBam
- id: in_out_vcf
  doc: GATK genotype calls for genome in inFasta coordinate
  type: string
  inputBinding:
    prefix: --outVcf
- id: in_novo_params
  doc: Alignment parameters for Novoalign.
  type: string
  inputBinding:
    prefix: --novo_params
- id: in_chr_names
  doc: "[CHR_NAMES [CHR_NAMES ...]]\nRename all output chromosomes (default: retain\n\
    original chromosome names)"
  type: boolean
  inputBinding:
    prefix: --chr_names
- id: in_keep_all_reads
  doc: "Retain all reads in BAM file? Default is to remove\nunaligned and duplicate\
    \ reads."
  type: boolean
  inputBinding:
    prefix: --keep_all_reads
- id: in_jvm_memory
  doc: 'JVM virtual memory size (default: 2g)'
  type: long
  inputBinding:
    prefix: --JVMmemory
- id: in_g_atk_path
  doc: "A path containing the GATK jar file. This overrides\nthe GATK_ENV environment\
    \ variable or the GATK conda\npackage. (default: None)"
  type: File
  inputBinding:
    prefix: --GATK_PATH
- id: in_novo_align_license_path
  doc: "A path to the novoalign.lic file. This overrides the\nNOVOALIGN_LICENSE_PATH\
    \ environment variable. (default:\nNone)"
  type: File
  inputBinding:
    prefix: --NOVOALIGN_LICENSE_PATH
- id: in_threads
  doc: 'Number of threads (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_loglevel
  doc: 'Verboseness of output. [default: DEBUG]'
  type: string
  inputBinding:
    prefix: --loglevel
- id: in_tmp_dir
  doc: 'Base directory for temp files. [default: /tmp]'
  type: Directory
  inputBinding:
    prefix: --tmp_dir
- id: in_tmp_dir_keep
  doc: "Keep the tmp_dir if an exception occurs while running.\nDefault is to delete\
    \ all temp files at the end, even\nif there's a failure.\n"
  type: boolean
  inputBinding:
    prefix: --tmp_dirKeep
- id: in_in_fasta
  doc: "Input assembly, FASTA format, pre-indexed for Picard,\nSamtools, and Novoalign."
  type: string
  inputBinding:
    position: 0
- id: in_in_bam
  doc: Input reads, unaligned BAM format.
  type: string
  inputBinding:
    position: 1
- id: in_out_fast_a
  doc: "Output refined assembly, FASTA format, indexed for\nPicard, Samtools, and\
    \ Novoalign."
  type: string
  inputBinding:
    position: 2
- id: in_space_dot
  doc: --min_coverage MIN_COVERAGE
  type: string
  inputBinding:
    position: 0
- id: in_unambiguous_dot
  doc: --major_cutoff MAJOR_CUTOFF
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- assembly.py
- refine_assembly
