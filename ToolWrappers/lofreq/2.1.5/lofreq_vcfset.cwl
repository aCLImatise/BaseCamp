class: CommandLineTool
id: lofreq_vcfset.cwl
inputs:
- id: in__vcf_file_st
  doc: '| --vcf1 FILE      1st VCF input file (bgzip supported)'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in__vcf_file_nd
  doc: '| --vcf2 FILE      2nd VCF input file (mandatory - except for concat - and
    needs to be tabix indexed)'
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in__vcfout_default
  doc: '| --vcfout         VCF output file (default: - for stdout; gzip supported).'
  type: File
  inputBinding:
    prefix: -o
- id: in__action_operation
  doc: "| --action         Set operation to perform: intersect, complement or concat.\n\
    - intersect = vcf1 AND vcf2.\n- complement = vcf1 \\ vcf2.\n- concat = vcf1 +\
    \ vcf2 ... vcfn (output as in file order, i.e. output not necessarily sorted!)"
  type: File
  inputBinding:
    prefix: -a
- id: in__addinfo_str
  doc: "| --add-info STR   Add info field, e.g. 'SOMATIC'"
  type: boolean
  inputBinding:
    prefix: -I
- id: in_count_only
  doc: Don't print bases, just numbers
  type: boolean
  inputBinding:
    prefix: --count-only
- id: in_only_pos
  doc: Disable allele-awareness by using position only (ignoring bases) as key for
    storing and comparison
  type: boolean
  inputBinding:
    prefix: --only-pos
- id: in_only_passed
  doc: Ignore variants marked as filtered
  type: boolean
  inputBinding:
    prefix: --only-passed
- id: in_only_sn_vs
  doc: Ignore anything but SNVs in both input files
  type: boolean
  inputBinding:
    prefix: --only-snvs
- id: in_only_indels
  doc: Ignore anything but indels in both input files
  type: boolean
  inputBinding:
    prefix: --only-indels
- id: in_verbose
  doc: Be verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Enable debugging
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__vcfout_default
  doc: '| --vcfout         VCF output file (default: - for stdout; gzip supported).'
  type: File
  outputBinding:
    glob: $(inputs.in__vcfout_default)
- id: out__action_operation
  doc: "| --action         Set operation to perform: intersect, complement or concat.\n\
    - intersect = vcf1 AND vcf2.\n- complement = vcf1 \\ vcf2.\n- concat = vcf1 +\
    \ vcf2 ... vcfn (output as in file order, i.e. output not necessarily sorted!)"
  type: File
  outputBinding:
    glob: $(inputs.in__action_operation)
cwlVersion: v1.1
baseCommand:
- lofreq
- vcfset
