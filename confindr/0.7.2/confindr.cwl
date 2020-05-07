class: CommandLineTool
id: confindr.py.cwl
inputs:
- id: input_directory
  doc: Folder that contains fastq files you want to check for contamination. Will
    find any file that contains .fq or .fastq in the filename.
  type: string
  inputBinding:
    prefix: --input_directory
- id: output_name
  doc: Base name for output/temporary directories.
  type: string
  inputBinding:
    prefix: --output_name
- id: databases
  doc: 'Databases folder. To download these, you will need to get access to the rMLST
    databases. For complete instructions on how to do this, please see https://olc-bioinformatics.github.io/ConFindr/install/
    #downloading-confindr-databases'
  type: string
  inputBinding:
    prefix: --databases
- id: rm_lst
  doc: Activate to prefer using rMLST databases over core- gene derived databases.
    By default,ConFindr will use core-gene derived databases where available.
  type: boolean
  inputBinding:
    prefix: --rmlst
- id: threads
  doc: Number of threads to run analysis with.
  type: string
  inputBinding:
    prefix: --threads
- id: tmp
  doc: If your ConFindr databases are in a location you don't have write access to,
    you can enter this option to specify a temporary directory to put genus-specific
    databases to.
  type: string
  inputBinding:
    prefix: --tmp
- id: keep_files
  doc: By default, intermediate files are deleted. Activate this flag to keep intermediate
    files.
  type: boolean
  inputBinding:
    prefix: --keep_files
- id: quality_cut_off
  doc: Base quality needed to support a multiple allele call. Defaults to 20.
  type: string
  inputBinding:
    prefix: --quality_cutoff
- id: base_cut_off
  doc: Number of bases necessary to support a multiple allele call. Defaults to 2.
  type: string
  inputBinding:
    prefix: --base_cutoff
- id: base_fraction_cut_off
  doc: Fraction of bases necessary to support a multiple allele call. Particularly
    useful when dealing with very high coverage samples. Default is 0.05.
  type: string
  inputBinding:
    prefix: --base_fraction_cutoff
- id: forward_id
  doc: Identifier for forward reads.
  type: string
  inputBinding:
    prefix: --forward_id
- id: reverse_id
  doc: Identifier for reverse reads.
  type: string
  inputBinding:
    prefix: --reverse_id
- id: data_type
  doc: Type of input data. Default is Illumina, but can be used for Nanopore too.
    No PacBio support (yet).
  type: string
  inputBinding:
    prefix: --data_type
- id: x_mx
  doc: Very occasionally, parts of the pipeline that use the BBMap suite will have
    their memory reservation fail and request not enough, or sometimes negative, memory.
    If this happens to you, you can use this flag to override automatic memory reservation
    and use an amount of memory requested by you. -Xmx 20g will specify 20 gigs of
    RAM, and -Xmx 800m will specify 800 megs.
  type: string
  inputBinding:
    prefix: --Xmx
- id: cgm_lst
  doc: Path to a cgMLST database to use for contamination detection instead of using
    the default rMLST database. Sequences in this file should have headers in format
    >genename_allelenumber. To speed up ConFindr runs, clustering the cgMLST database
    with CD-HIT before running ConFindr is recommended. This is highly experimental,
    results should be interpreted with great care.
  type: string
  inputBinding:
    prefix: --cgmlst
- id: fast_a
  doc: If activated, will look for FASTA files instead of FASTQ for unpaired reads.
  type: boolean
  inputBinding:
    prefix: --fasta
- id: verbosity
  doc: Amount of output you want printed to the screen. Defaults to info, which should
    be good for most users.
  type: string
  inputBinding:
    prefix: --verbosity
- id: cross_details
  doc: Continue ConFindr analyses on samples with two or more genera identified. Default
    is False
  type: boolean
  inputBinding:
    prefix: --cross_details
- id: min_matching_hashes
  doc: Minimum number of matching hashes in a MASH screen in order for a genus to
    be considered present in a sample. Default is 150
  type: long
  inputBinding:
    prefix: --min_matching_hashes
outputs: []
cwlVersion: v1.1
baseCommand:
- confindr.py
