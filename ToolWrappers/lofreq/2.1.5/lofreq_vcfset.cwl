class: CommandLineTool
id: lofreq_vcfset.cwl
inputs:
- id: in_vcf_one
  doc: 1st VCF input file (bgzip supported)
  type: File?
  inputBinding:
    prefix: --vcf1
- id: in_vcf_two
  doc: 2nd VCF input file (mandatory - except for concat - and needs to be tabix indexed)
  type: File?
  inputBinding:
    prefix: --vcf2
- id: in_vcf_out
  doc: 'VCF output file (default: - for stdout; gzip supported).'
  type: File?
  inputBinding:
    prefix: --vcfout
- id: in_action
  doc: "Set operation to perform: intersect, complement or concat.\n- intersect =\
    \ vcf1 AND vcf2.\n- complement = vcf1 \\ vcf2.\n- concat = vcf1 + vcf2 ... vcfn\
    \ (output as in file order, i.e. output not necessarily sorted!)"
  type: File?
  inputBinding:
    prefix: --action
- id: in_add_info
  doc: Add info field, e.g. 'SOMATIC'
  type: string?
  inputBinding:
    prefix: --add-info
- id: in_count_only
  doc: Don't print bases, just numbers
  type: boolean?
  inputBinding:
    prefix: --count-only
- id: in_only_pos
  doc: Disable allele-awareness by using position only (ignoring bases) as key for
    storing and comparison
  type: boolean?
  inputBinding:
    prefix: --only-pos
- id: in_only_passed
  doc: Ignore variants marked as filtered
  type: boolean?
  inputBinding:
    prefix: --only-passed
- id: in_only_sn_vs
  doc: Ignore anything but SNVs in both input files
  type: boolean?
  inputBinding:
    prefix: --only-snvs
- id: in_only_indels
  doc: Ignore anything but indels in both input files
  type: boolean?
  inputBinding:
    prefix: --only-indels
- id: in_verbose
  doc: Be verbose
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Enable debugging
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_vcf_out
  doc: 'VCF output file (default: - for stdout; gzip supported).'
  type: File?
  outputBinding:
    glob: $(inputs.in_vcf_out)
- id: out_action
  doc: "Set operation to perform: intersect, complement or concat.\n- intersect =\
    \ vcf1 AND vcf2.\n- complement = vcf1 \\ vcf2.\n- concat = vcf1 + vcf2 ... vcfn\
    \ (output as in file order, i.e. output not necessarily sorted!)"
  type: File?
  outputBinding:
    glob: $(inputs.in_action)
hints: []
cwlVersion: v1.1
baseCommand:
- lofreq
- vcfset
