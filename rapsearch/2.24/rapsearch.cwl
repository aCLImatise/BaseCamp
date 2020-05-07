class: CommandLineTool
id: rapsearch.cwl
inputs:
- id: q
  doc: ': query file or stdin (FASTA or FASTQ format)'
  type: string
  inputBinding:
    prefix: -q
- id: d
  doc: ': database file (**base name only**, with full path)'
  type: string
  inputBinding:
    prefix: -d
- id: o
  doc: ': output file name'
  type: string
  inputBinding:
    prefix: -o
- id: u
  doc: ": stream one result through stdout [1: m8 result, 2: aln result, default:\
    \ don't stream any result through stdout]"
  type: long
  inputBinding:
    prefix: -u
- id: z
  doc: ': number of threads [default: 1]'
  type: long
  inputBinding:
    prefix: -z
- id: s
  doc: ': report log10(E-value) or E-value for each hit [t/T: log10(E-value), the
    default; f/F: E-value]'
  type: string
  inputBinding:
    prefix: -s
- id: e
  doc: ': E-value threshold, given in the format of log10(E-value), or E-value (when
    -s is set to f) [default: 1.0/10.0]. '
  type: string
  inputBinding:
    prefix: -e
- id: i
  doc: ': threshold of bit score [default: 0.0]. It is the alternative option to limit
    the hits to report.'
  type: string
  inputBinding:
    prefix: -i
- id: l
  doc: ': threshold of minimal alignment length [default: 0]'
  type: long
  inputBinding:
    prefix: -l
- id: v
  doc: ": number of database sequences to show one-line descriptions [default: 500].\
    \ If it's -1, all results will be shown."
  type: long
  inputBinding:
    prefix: -v
- id: b
  doc: ": number of database sequence to show alignments [default: 100]. If it's -1,\
    \ all results will be shown."
  type: long
  inputBinding:
    prefix: -b
- id: t
  doc: ': type of query sequences [u/U:unknown, n/N:nucleotide, a/A:amino acid, q/Q:fastq,
    default: u]'
  type: string
  inputBinding:
    prefix: -t
- id: p
  doc: ': output ALL/MATCHED query reads into the alignment file [t/T: output all
    query reads, f/F: output matched reads, default: f]'
  type: string
  inputBinding:
    prefix: -p
- id: g
  doc: ': apply gap extension [t/T: yes, f/F: no, default: t]'
  type: string
  inputBinding:
    prefix: -g
- id: a
  doc: ': use fast mode (10~30 fold) [t/T: yes, f/F: no, default: f]'
  type: string
  inputBinding:
    prefix: -a
- id: w
  doc: ': apply HSSP criterion instead of E-value criterion [t/T: HSSP, f/F: E-value
    criteria, default: f]'
  type: string
  inputBinding:
    prefix: -w
- id: x
  doc: ': print hits in xml format [t/T: yes, f/F: no, default: f]'
  type: string
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- rapsearch
