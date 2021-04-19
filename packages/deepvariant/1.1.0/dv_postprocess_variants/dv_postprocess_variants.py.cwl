class: CommandLineTool
id: dv_postprocess_variants.py.cwl
inputs:
- id: in_cnn_hom_ref_call_min_gq
  doc: ": All CNN RefCalls whose GQ is less than this value\nwill have ./. genotype\
    \ instead of 0/0.\n(default: '20.0')\n(a number)"
  type: boolean?
  inputBinding:
    prefix: --cnn_homref_call_min_gq
- id: in_gvc_f_outfile
  doc: ': Optional. Destination path where we will write the Genomic VCF'
  type: boolean?
  inputBinding:
    prefix: --gvcf_outfile
- id: in_non_variant_site_tf_record_path
  doc: ": Optional. Path(s) to the non-variant sites\nprotos in TFRecord format to\
    \ convert to gVCF file. This should be the\ncomplete set of outputs from the --gvcf\
    \ flag of make_examples.py."
  type: boolean?
  inputBinding:
    prefix: --nonvariant_site_tfrecord_path
- id: in_outfile
  doc: ": Required. Destination path where we will write output variant calls\nin\
    \ VCF format."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_qual_filter
  doc: ': Any variant with QUAL < qual_filter will be filtered in the VCF'
  type: boolean?
  inputBinding:
    prefix: --qual_filter
- id: in_ref
  doc: ": Required. Genome reference in FAI-indexed FASTA format. Used to\ndetermine\
    \ the sort order for the emitted variants and the VCF header."
  type: boolean?
  inputBinding:
    prefix: --ref
- id: in_sample_name
  doc: ": Optional. If set, this will only be used if the sample name\ncannot be determined\
    \ from the CallVariantsOutput or non-variant sites\nprotos."
  type: boolean?
  inputBinding:
    prefix: --sample_name
- id: in_in_file
  doc: Input tfrecord file from call_variants
  type: File?
  inputBinding:
    prefix: --infile
- id: in_gvc_f_in_file
  doc: "Input gVCF tfrecord file from make_examples, formatted\nas {{gvcf}}/{{sample}}.gvcf.tfrecord@{{cores}}.gz,\n\
    with arguments as supplied to make_examples."
  type: File?
  inputBinding:
    prefix: --gvcf_infile
- id: in_output_dot
  doc: '--infile: Required. Path(s) to CallVariantOutput protos in TFRecord format
    to'
  type: string
  inputBinding:
    position: 0
- id: in_call_variants_do_tpy_dot
  doc: '--multi_allelic_qual_filter: The qual value below which to filter multi-'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: ": Required. Destination path where we will write output variant calls\nin\
    \ VCF format."
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepvariant:1.1.0--py36hf3e76ba_0
cwlVersion: v1.1
baseCommand:
- dv_postprocess_variants.py
