#!/usr/bin/env cwl-runner

baseCommand:
- guidescan_processer
class: CommandLineTool
cwlVersion: v1.0
id: guidescan_processer
inputs:
- doc: 'path to fasta file or folder with fasta files (will use all .fa, .fasta, .fa.gz,
    .fasta.gz files found in the folder) (default: None)'
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: 'project name, use in all output (will produce a folder with this name containing
    intermediate and final files in it) (default: myguides)'
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: 'minimum chromosome length to consider, chromosomes in input FASTA that are
    shorter than this will be excluded from analysis; simple way to exclude scaffolds
    unassigned to known chromosomes etc. (default: 10000)'
  id: min_chr
  inputBinding:
    prefix: --minchr
  type: long
- doc: 'list names of chromosomes (comma separated) that will be used in analysis,
    or name of file where this list is stored (default: )'
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: 'desired length of guideRNAs (not including PAM) (default: 20)'
  id: l
  inputBinding:
    prefix: -l
  type: long
- doc: 'PAM sequence (default: NGG)'
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: 'alternative PAM sequences (separate multiple ones by commas), will not be
    used in primary guideRNAs, but will be considered in off-targets; all PAM sequences
    should be mutually exclusive and of the same length (default: NAG)'
  id: a
  inputBinding:
    prefix: -a
  type: string
- doc: 'position of PAM with respect to guideRNA (default: end)'
  id: pam_pos
  inputBinding:
    prefix: --pampos
  type: string
- doc: 'minimum mismatch similarity between guideRNAs; a candidate guideRNA (with
    primary PAM) should not have alternative occurences in the genome (with any PAM)
    with less than this many mismatches (not including PAM) (default: 2)'
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: 'maximum distance to consider from guideRNA to its off- target; off-target
    is an alternative occurrence (with any PAM) of this guideRNA in the genome at
    edit distance at most this number (including PAM); currently values larger than
    4 are infeasible for large (e.g., mammalian) genomes, and value 3 will take long
    time to compute; use -1 if do not want any off- target info in resulting database
    (can add it later using bamdata) (default: 3)'
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: 'maximum number of positions of k-mers to remember; for k-mer occurring multiple
    times in the genome (such k-mers cannot be guideRNAs, but their positions can
    be off-targets of guideRNAs) store at most this many arbitrary their occurrences
    in the genome (default: 10)'
  id: max_off_pos
  inputBinding:
    prefix: --maxoffpos
  type: long
- doc: 'maximum number of off-targets to store for a guideRNA in a resulting BAM library
    (default: 1000)'
  id: max_off_count
  inputBinding:
    prefix: --maxoffcount
  type: long
- doc: 'path to gnu utilities, e.g. "/usr/local/bin"; if empty, use system defaults;
    requires: cut, sort, uniq, shuf (default: )'
  id: gnu_path
  inputBinding:
    prefix: --gnupath
  type: string
- doc: 'how many threads to use; do not specify more than you have on your system;
    currently not implemented (default: 1)'
  id: t
  inputBinding:
    prefix: -t
  type: string
