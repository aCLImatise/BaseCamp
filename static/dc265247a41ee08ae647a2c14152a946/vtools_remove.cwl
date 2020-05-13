class: CommandLineTool
id: vtools_remove.cwl
inputs:
- id: items
  doc: Items to be removed, which should be, for 'project' the name of project to
    be removed (optional), for 'tables' names of one or more variant tables (wildcard
    characters ? and * are allowed), for 'samples' patterns using which matching samples
    are removed, for 'fields' name of fields to be removed, for 'geno_fields' name
    of genotype fields to be removed (cf. 'vtools show genotypes'), for 'annotations'
    names of annotation databases, for 'variants' variant tables whose variants will
    be removed from all variant tables and genotypes, for 'genotypes' conditions using
    which matching genotypes are removed, and for 'phenotypes' columns in the output
    of 'vtools show samples'. Note that removal of samples will only remove sample
    name, filename (if all related samples are removed), and related genotypes, but
    not variants themselves; removal of annotation databases will stop using these
    databases in the project, but will not delete them from disk.
  type: string
  inputBinding:
    position: 0
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools
- remove
