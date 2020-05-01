#!/usr/bin/env cwl-runner

baseCommand:
- rapsearch
class: CommandLineTool
cwlVersion: v1.0
id: rapsearch
inputs:
- doc: ': query file or stdin (FASTA or FASTQ format)'
  id: q
  inputBinding:
    prefix: -q
  type: string
- doc: ': database file (**base name only**, with full path)'
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: ': output file name'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ": stream one result through stdout [1: m8 result, 2: aln result, default:\
    \ don't stream any result through stdout]"
  id: u
  inputBinding:
    prefix: -u
  type: long
- doc: ': number of threads [default: 1]'
  id: z
  inputBinding:
    prefix: -z
  type: long
- doc: ': report log10(E-value) or E-value for each hit [t/T: log10(E-value), the
    default; f/F: E-value]'
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: ': E-value threshold, given in the format of log10(E-value), or E-value (when
    -s is set to f) [default: 1.0/10.0]. '
  id: e
  inputBinding:
    prefix: -e
  type: string
- doc: ': threshold of bit score [default: 0.0]. It is the alternative option to limit
    the hits to report.'
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ': threshold of minimal alignment length [default: 0]'
  id: l
  inputBinding:
    prefix: -l
  type: long
- doc: ": number of database sequences to show one-line descriptions [default: 500].\
    \ If it's -1, all results will be shown."
  id: v
  inputBinding:
    prefix: -v
  type: long
- doc: ": number of database sequence to show alignments [default: 100]. If it's -1,\
    \ all results will be shown."
  id: b
  inputBinding:
    prefix: -b
  type: long
- doc: ': type of query sequences [u/U:unknown, n/N:nucleotide, a/A:amino acid, q/Q:fastq,
    default: u]'
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: ': output ALL/MATCHED query reads into the alignment file [t/T: output all
    query reads, f/F: output matched reads, default: f]'
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: ': apply gap extension [t/T: yes, f/F: no, default: t]'
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: ': use fast mode (10~30 fold) [t/T: yes, f/F: no, default: f]'
  id: a
  inputBinding:
    prefix: -a
  type: string
- doc: ': apply HSSP criterion instead of E-value criterion [t/T: HSSP, f/F: E-value
    criteria, default: f]'
  id: w
  inputBinding:
    prefix: -w
  type: string
- doc: ': print hits in xml format [t/T: yes, f/F: no, default: f]'
  id: x
  inputBinding:
    prefix: -x
  type: string
