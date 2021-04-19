version 1.0

task DvPostprocessVariantspy {
  input {
    Boolean? cnn_hom_ref_call_min_gq
    Boolean? gvc_f_outfile
    Boolean? non_variant_site_tf_record_path
    File? outfile
    Boolean? qual_filter
    Boolean? ref
    Boolean? sample_name
    File? in_file
    File? gvc_f_in_file
    String output_dot
    String call_variants_do_tpy_dot
  }
  command <<<
    dv_postprocess_variants_py \
      ~{output_dot} \
      ~{call_variants_do_tpy_dot} \
      ~{if (cnn_hom_ref_call_min_gq) then "--cnn_homref_call_min_gq" else ""} \
      ~{if (gvc_f_outfile) then "--gvcf_outfile" else ""} \
      ~{if (non_variant_site_tf_record_path) then "--nonvariant_site_tfrecord_path" else ""} \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if (qual_filter) then "--qual_filter" else ""} \
      ~{if (ref) then "--ref" else ""} \
      ~{if (sample_name) then "--sample_name" else ""} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(gvc_f_in_file) then ("--gvcf_infile " +  '"' + gvc_f_in_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepvariant:1.1.0--py36hf3e76ba_0"
  }
  parameter_meta {
    cnn_hom_ref_call_min_gq: ": All CNN RefCalls whose GQ is less than this value\\nwill have ./. genotype instead of 0/0.\\n(default: '20.0')\\n(a number)"
    gvc_f_outfile: ": Optional. Destination path where we will write the Genomic VCF"
    non_variant_site_tf_record_path: ": Optional. Path(s) to the non-variant sites\\nprotos in TFRecord format to convert to gVCF file. This should be the\\ncomplete set of outputs from the --gvcf flag of make_examples.py."
    outfile: ": Required. Destination path where we will write output variant calls\\nin VCF format."
    qual_filter: ": Any variant with QUAL < qual_filter will be filtered in the VCF"
    ref: ": Required. Genome reference in FAI-indexed FASTA format. Used to\\ndetermine the sort order for the emitted variants and the VCF header."
    sample_name: ": Optional. If set, this will only be used if the sample name\\ncannot be determined from the CallVariantsOutput or non-variant sites\\nprotos."
    in_file: "Input tfrecord file from call_variants"
    gvc_f_in_file: "Input gVCF tfrecord file from make_examples, formatted\\nas {{gvcf}}/{{sample}}.gvcf.tfrecord@{{cores}}.gz,\\nwith arguments as supplied to make_examples."
    output_dot: "--infile: Required. Path(s) to CallVariantOutput protos in TFRecord format to"
    call_variants_do_tpy_dot: "--multi_allelic_qual_filter: The qual value below which to filter multi-"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}