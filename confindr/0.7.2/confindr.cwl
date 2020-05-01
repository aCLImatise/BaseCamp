#!/usr/bin/env cwl-runner

baseCommand:
- confindr.py
class: CommandLineTool
cwlVersion: v1.0
id: confindr.py
inputs:
- doc: Folder that contains fastq files you want to check for contamination. Will
    find any file that contains .fq or .fastq in the filename.
  id: input_directory
  inputBinding:
    prefix: --input_directory
  type: string
- doc: Base name for output/temporary directories.
  id: output_name
  inputBinding:
    prefix: --output_name
  type: string
- doc: 'Databases folder. To download these, you will need to get access to the rMLST
    databases. For complete instructions on how to do this, please see https://olc-bioinformatics.github.io/ConFindr/install/
    #downloading-confindr-databases'
  id: databases
  inputBinding:
    prefix: --databases
  type: string
- doc: Activate to prefer using rMLST databases over core- gene derived databases.
    By default,ConFindr will use core-gene derived databases where available.
  id: rm_lst
  inputBinding:
    prefix: --rmlst
  type: boolean
- doc: Number of threads to run analysis with.
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: If your ConFindr databases are in a location you don't have write access to,
    you can enter this option to specify a temporary directory to put genus-specific
    databases to.
  id: tmp
  inputBinding:
    prefix: --tmp
  type: string
- doc: By default, intermediate files are deleted. Activate this flag to keep intermediate
    files.
  id: keep_files
  inputBinding:
    prefix: --keep_files
  type: boolean
- doc: Base quality needed to support a multiple allele call. Defaults to 20.
  id: quality_cut_off
  inputBinding:
    prefix: --quality_cutoff
  type: string
- doc: Number of bases necessary to support a multiple allele call. Defaults to 2.
  id: base_cut_off
  inputBinding:
    prefix: --base_cutoff
  type: string
- doc: Fraction of bases necessary to support a multiple allele call. Particularly
    useful when dealing with very high coverage samples. Default is 0.05.
  id: base_fraction_cut_off
  inputBinding:
    prefix: --base_fraction_cutoff
  type: string
- doc: Identifier for forward reads.
  id: forward_id
  inputBinding:
    prefix: --forward_id
  type: string
- doc: Identifier for reverse reads.
  id: reverse_id
  inputBinding:
    prefix: --reverse_id
  type: string
- doc: Type of input data. Default is Illumina, but can be used for Nanopore too.
    No PacBio support (yet).
  id: data_type
  inputBinding:
    prefix: --data_type
  type: string
- doc: Very occasionally, parts of the pipeline that use the BBMap suite will have
    their memory reservation fail and request not enough, or sometimes negative, memory.
    If this happens to you, you can use this flag to override automatic memory reservation
    and use an amount of memory requested by you. -Xmx 20g will specify 20 gigs of
    RAM, and -Xmx 800m will specify 800 megs.
  id: x_mx
  inputBinding:
    prefix: --Xmx
  type: string
- doc: Path to a cgMLST database to use for contamination detection instead of using
    the default rMLST database. Sequences in this file should have headers in format
    >genename_allelenumber. To speed up ConFindr runs, clustering the cgMLST database
    with CD-HIT before running ConFindr is recommended. This is highly experimental,
    results should be interpreted with great care.
  id: cgm_lst
  inputBinding:
    prefix: --cgmlst
  type: string
- doc: If activated, will look for FASTA files instead of FASTQ for unpaired reads.
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: boolean
- doc: Amount of output you want printed to the screen. Defaults to info, which should
    be good for most users.
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: string
- doc: Continue ConFindr analyses on samples with two or more genera identified. Default
    is False
  id: cross_details
  inputBinding:
    prefix: --cross_details
  type: boolean
- doc: Minimum number of matching hashes in a MASH screen in order for a genus to
    be considered present in a sample. Default is 150
  id: min_matching_hashes
  inputBinding:
    prefix: --min_matching_hashes
  type: long
