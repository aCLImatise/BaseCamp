version 1.0

task Bax2bam {
  input {
    File? xml
    File? fof_n
    String? prefix_output_filenames
    File? output_xml
    Boolean? sub_read
    Boolean? hq_region
    Boolean? polymerase_read
    Boolean? ccs
    String? pulse_features
    Boolean? lossless_frames
    File? internal
    Boolean? allow_unrecognized_chemistry_triple
    String deletion_qv
    String deletion_tag
    String insertion_qv
    String ipd
    String pulse_width
    String merge_qv
    String substitution_qv
    String substitution_tag
  }
  command <<<
    bax2bam \
      ~{deletion_qv} \
      ~{deletion_tag} \
      ~{insertion_qv} \
      ~{ipd} \
      ~{pulse_width} \
      ~{merge_qv} \
      ~{substitution_qv} \
      ~{substitution_tag} \
      ~{if defined(xml) then ("--xml " +  '"' + xml + '"') else ""} \
      ~{if defined(fof_n) then ("--fofn " +  '"' + fof_n + '"') else ""} \
      ~{if defined(prefix_output_filenames) then ("-o " +  '"' + prefix_output_filenames + '"') else ""} \
      ~{if defined(output_xml) then ("--output-xml " +  '"' + output_xml + '"') else ""} \
      ~{if (sub_read) then "--subread" else ""} \
      ~{if (hq_region) then "--hqregion" else ""} \
      ~{if (polymerase_read) then "--polymeraseread" else ""} \
      ~{if (ccs) then "--ccs" else ""} \
      ~{if defined(pulse_features) then ("--pulsefeatures " +  '"' + pulse_features + '"') else ""} \
      ~{if (lossless_frames) then "--losslessframes" else ""} \
      ~{if (internal) then "--internal" else ""} \
      ~{if (allow_unrecognized_chemistry_triple) then "--allowUnrecognizedChemistryTriple" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    xml: "DataSet XML file containing a list of movie names"
    fof_n: "File-of-file-names containing a list of input files"
    prefix_output_filenames: "Prefix of output filenames. Movie name will be used if\\nno prefix provided"
    output_xml: "Explicit output XML name. If none provided via this arg,\\nbax2bam will use -o prefix (<prefix>.dataset.xml). If\\nthat is not specified either, the output XML filename\\nwill be <moviename>.dataset.xml"
    sub_read: "Output subreads (default)"
    hq_region: "Output HQ regions"
    polymerase_read: "Output full polymerase read"
    ccs: "Output CCS sequences (requires ccs.h5 input)"
    pulse_features: "Comma-separated list of desired pulse features, using\\nthe names listed above."
    lossless_frames: "Store full, 16-bit IPD/PulseWidth data, instead of\\n(default) downsampled, 8-bit encoding."
    internal: "Output BAMs in internal mode. Currently this indicates\\nthat non-sequencing ZMWs should be included in the\\noutput scraps BAM file, if applicable."
    allow_unrecognized_chemistry_triple: "By default, bax2bam only allows the conversion of files\\nwith chemistries that are supported in SMRT Analysis 3.\\nSet this flag to disable the strict check and allow\\ngeneration of BAM files containing legacy chemistries.\\n"
    deletion_qv: "dq        Y"
    deletion_tag: "dt        Y"
    insertion_qv: "iq        Y"
    ipd: "ip        Y"
    pulse_width: "pw        Y*"
    merge_qv: "mq        Y"
    substitution_qv: "sq        Y"
    substitution_tag: "st        N"
  }
  output {
    File out_stdout = stdout()
    File out_output_xml = "${in_output_xml}"
    File out_internal = "${in_internal}"
  }
}