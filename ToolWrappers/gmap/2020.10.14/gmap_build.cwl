class: CommandLineTool
id: gmap_build.cwl
inputs:
- id: in_dir
  doc: "Destination directory for installation (defaults to gmapdb\ndirectory specified\
    \ at configure time)"
  type: Directory?
  inputBinding:
    prefix: --dir
- id: in_genome_db
  doc: Genome name (required)
  type: string?
  inputBinding:
    prefix: --genomedb
- id: in_names
  doc: "Substitute names for contigs, provided in a file.\nThe file can have two formats:\n\
    1.  A file with one column per line, with each line\ncorresponding to a FASTA\
    \ file, in the order given to\ngmap_build.  The chromosome name for each FASTA\
    \ file will\nbe replaced with the desired chromosome name in the file.\nEvery\
    \ chromosome must have a corresponding line in the\nfile.\n2.  A file with two\
    \ columns per line, separated by white\nspace.  In each line, the original FASTA\
    \ chromosome name\nshould be in column 1 and the desired chromosome name\nwill\
    \ be in column 2.  Not every chromosome needs to be\nlisted, which provides an\
    \ easy way to change a few\nchromosome names.\nThis file can be combined with\
    \ the --sort=names option, in\nwhich the order of chromosomes is that given in\
    \ the file.  In\nthis case, every chromosome must be listed in the file, and\n\
    for chromosome names that should not be changed, column 2 can\nbe blank (or the\
    \ same as column 1).  The option of a blank\ncolumn 2 is allowed only when specifying\
    \ --sort=names,\nbecause otherwise, the program cannot distinguish between a\n\
    1-column and 2-column names file."
  type: File?
  inputBinding:
    prefix: --names
- id: in_km_er
  doc: 'k-mer value for genomic index (allowed: 15 or less, default is 15)'
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_sampling_interval_genomoe
  doc: 'sampling interval for genomoe (allowed: 1-3, default 3)'
  type: long?
  inputBinding:
    prefix: -q
- id: in_sort
  doc: "Sort chromosomes using given method:\nnone - use chromosomes as found in FASTA\
    \ file(s) (default)\nalpha - sort chromosomes alphabetically (chr10 before chr\
    \ 1)\nnumeric-alpha - chr1, chr1U, chr2, chrM, chrU, chrX, chrY\nchrom - chr1,\
    \ chr2, chrM, chrX, chrY, chr1U, chrU\nnames - sort chromosomes based on file\
    \ provided to --names flag"
  type: File?
  inputBinding:
    prefix: --sort
- id: in_gunzip
  doc: Files are gzipped, so need to gunzip each file first
  type: boolean?
  inputBinding:
    prefix: --gunzip
- id: in_fast_a_pipe
  doc: Interpret argument as a command, instead of a list of FASTA files
  type: string?
  inputBinding:
    prefix: --fasta-pipe
- id: in_fast_q
  doc: Files are in FASTQ format
  type: boolean?
  inputBinding:
    prefix: --fastq
- id: in_rev_comp
  doc: Reverse complement all contigs
  type: boolean?
  inputBinding:
    prefix: --revcomp
- id: in_sleep_many_seconds
  doc: Wait (sleep) this many seconds after each step (default 2)
  type: long?
  inputBinding:
    prefix: -w
- id: in_circular
  doc: "Circular chromosomes (either a list of chromosomes separated\nby a comma,\
    \ or a filename containing circular chromosomes,\none per line).  If you use the\
    \ --names feature, then you\nshould use the original name of the chromosome, not\
    \ the\nsubstitute name, for this option."
  type: File?
  inputBinding:
    prefix: --circular
- id: in_alt_scaffold
  doc: "File with alt scaffold info, listing alternate scaffolds,\none per line, tab-delimited,\
    \ with the following fields:\n(1) alt_scaf_acc, (2) parent_name, (3) orientation,\n\
    (4) alt_scaf_start, (5) alt_scaf_stop, (6) parent_start, (7) parent_end."
  type: File?
  inputBinding:
    prefix: --altscaffold
- id: in_n_messages
  doc: Maximum number of messages (warnings, contig reports) to report (default 50)
  type: long?
  inputBinding:
    prefix: --nmessages
- id: in_md_flag
  doc: "Use MD file from NCBI for mapping contigs to\nchromosomal coordinates"
  type: File?
  inputBinding:
    prefix: --mdflag
- id: in_contigs_are_mapped
  doc: "Find a chromosomal region in each FASTA header line.\nUseful for contigs that\
    \ have been mapped\nto chromosomal coordinates.  Ignored if the --mdflag is provided."
  type: boolean?
  inputBinding:
    prefix: --contigs-are-mapped
- id: in_transcriptome_db
  doc: Transcriptome name
  type: string?
  inputBinding:
    prefix: --transcriptomedb
- id: in_transcripts
  doc: FASTA file containing transcripts (required if specifying
  type: File?
  inputBinding:
    prefix: --transcripts
- id: in_n_threads
  doc: "Number of threads for GMAP alignment of transcripts to genome\n(default 8)\n"
  type: long?
  inputBinding:
    prefix: --nthreads
- id: in_options_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_genome_fast_a_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gmap:2020.10.14--pl526h2f06484_0
cwlVersion: v1.1
baseCommand:
- gmap_build
