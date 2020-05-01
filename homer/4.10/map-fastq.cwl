#!/usr/bin/env cwl-runner

baseCommand:
- map-fastq.pl
class: CommandLineTool
cwlVersion: v1.0
id: map-fastq.pl
inputs:
- doc: '<#> (Number of cpus per instance, default: 1)'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: (path to index to use for mapping)
  id: x
  inputBinding:
    prefix: -x
  type: File
- doc: (if only 1st read file is specified, this will look for 2nd read and do PE
    alignment)
  id: pe
  inputBinding:
    prefix: -pe
  type: boolean
- doc: <suffix to apply to mapped files, default genome/program>
  id: suffix
  inputBinding:
    prefix: -suffix
  type: boolean
- doc: (map with bowtie2)
  id: bowtie2
  inputBinding:
    prefix: -bowtie2
  type: boolean
- doc: (map with bowtie, add "-C" if using colorspace)
  id: bowtie
  inputBinding:
    prefix: -bowtie
  type: boolean
- doc: (map with bwa mem)
  id: bwa
  inputBinding:
    prefix: -bwa
  type: boolean
- doc: (map with hisat2)
  id: hisat2
  inputBinding:
    prefix: -hisat2
  type: boolean
- doc: (map with STAR) -path <path-to-program-file> (executable file to run if not
    in path/diff name)
  id: star
  inputBinding:
    prefix: -star
  type: boolean
- doc: (will output unaligned reads)
  id: un
  inputBinding:
    prefix: -un
  type: boolean
- doc: (convert output files from sam to bam)
  id: bam
  inputBinding:
    prefix: -bam
  type: boolean
- doc: '(local alignment, default: global/end-to-end)'
  id: local
  inputBinding:
    prefix: --local
  type: boolean
- doc: (Input is FASTA files, default expects FASTQ)
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '"..." (need to include quotes)'
  id: pass
  inputBinding:
    prefix: -pass
  type: boolean
- doc: (don't dump subprogram stderr to /dev/null)
  id: show_errors
  inputBinding:
    prefix: -showErrors
  type: boolean
