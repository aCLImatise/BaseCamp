class: CommandLineTool
id: meryl_import.cwl
inputs:
- id: km_ers
  doc: A file consisting of kmers and values, one per line, separated by white space
    ('AGTTGCC 4').  Order of kmers is not important. Duplicate kmers will be handled
    according to the -multiset option. A persistent value can be specified as '#<value>'
    (e.g., '#3') All kmers with no value after this line will use this value.
  type: string
  inputBinding:
    prefix: -kmers
- id: k
  doc: The size of a kmer, in bases.  Setting this larger than the kmers in the input
    will probably lead to a crash.  Setting it smaller will result in only the left-most
    bases being used.
  type: long
  inputBinding:
    prefix: -k
- id: output
  doc: Create (or overwrite) meryl database 'database.meryl'.
  type: string
  inputBinding:
    prefix: -output
- id: multiset
  doc: 'Write duplicate kmers in the input to the database as individual entries.  A
    kmer AGTTGCC in the input twice with values 4 and 7 will be listed in the output
    database twice, once with value 4, and once with value 7.  Without this option,
    the values will be summed: AGTTGCC will be listed once with value 11.'
  type: boolean
  inputBinding:
    prefix: -multiset
- id: maxvalue
  doc: An optional memory and time optimization, useful if your values are randomly
    distributed and below some known maximum value. For data whose values are the
    counts from actual data, it is probably best to not set this option.
  type: string
  inputBinding:
    prefix: -maxvalue
- id: forward
  doc: By default, the canonical kmer is loaded into the database.  These
  type: boolean
  inputBinding:
    prefix: -forward
- id: reverse
  doc: options force either the forward or reverse-complement kmer to be loaded instead.  These
    options are mutually exclusive.
  type: boolean
  inputBinding:
    prefix: -reverse
- id: threads
  doc: Use <t> compute threads when sorting and writing data.
  type: string
  inputBinding:
    prefix: -threads
- id: memory
  doc: (accepted, but not implemented, sorry)
  type: string
  inputBinding:
    prefix: -memory
outputs: []
cwlVersion: v1.1
baseCommand:
- meryl-import
