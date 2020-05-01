#!/usr/bin/env cwl-runner

baseCommand:
- snpindex
class: CommandLineTool
cwlVersion: v1.0
id: snpindex
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: i_it_file
  inputBinding:
    position: 1
  type: string
- doc: Directory where to read genome index files (default is GMAP genome directory
    specified at compile time)
  id: source_dir
  inputBinding:
    prefix: --sourcedir
  type: Directory
- doc: Genome database
  id: db
  inputBinding:
    prefix: --db
  type: string
- doc: 'kmer size to use in genome database (allowed values: 16 or less). If not specified,
    the program will find the highest available kmer size in the genome database'
  id: km_er
  inputBinding:
    prefix: --kmer
  type: long
- doc: Sampling to use in genome database.  If not specified, the program will find
    the smallest available sampling value in the genome database within selected k-mer
    size
  id: sampling
  inputBinding:
    prefix: --sampling
  type: long
- doc: Directory where to write SNP index files (default is GMAP genome directory
    specified at compile time)
  id: destdir
  inputBinding:
    prefix: --destdir
  type: Directory
- doc: Name of SNP database
  id: snps_db
  inputBinding:
    prefix: --snpsdb
  type: string
- doc: Maximum number of warnings to print to stderr about inconsistencies relative
    to the reference genome. A value of 0 turns off all warnings.  A negative value
    prints all warnings.  (default -1, meaning no limit)
  id: max_warnings
  inputBinding:
    prefix: --max-warnings
  type: long
