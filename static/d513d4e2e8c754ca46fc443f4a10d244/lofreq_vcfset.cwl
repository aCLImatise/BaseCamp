class: CommandLineTool
id: lofreq_vcfset.cwl
inputs:
- id: o
  doc: '| --vcfout         VCF output file (default: - for stdout; gzip supported).'
  type: boolean
  inputBinding:
    prefix: -o
- id: a
  doc: '| --action         Set operation to perform: intersect, complement or concat.
    - intersect = vcf1 AND vcf2. - complement = vcf1 \ vcf2. - concat = vcf1 + vcf2
    ... vcfn (output as in file order, i.e. output not necessarily sorted!)'
  type: boolean
  inputBinding:
    prefix: -a
- id: i
  doc: "| --add-info STR   Add info field, e.g. 'SOMATIC' --count-only     Don't print\
    \ bases, just numbers --only-pos       Disable allele-awareness by using position\
    \ only (ignoring bases) as key for storing and comparison --only-passed    Ignore\
    \ variants marked as filtered --only-snvs      Ignore anything but SNVs in both\
    \ input files --only-indels    Ignore anything but indels in both input files\
    \ --verbose        Be verbose --debug          Enable debugging"
  type: boolean
  inputBinding:
    prefix: -I
outputs: []
cwlVersion: v1.1
baseCommand:
- lofreq
- vcfset
