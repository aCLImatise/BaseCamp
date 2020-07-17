version 1.0

task EslMask {
  input {
    String? output_masked_sequences
    Boolean? reverse_mask_exclusive
    Boolean? random_access_fetch
    Boolean? convert_masked_residues_lower
    String? convert_masked_residues_character
    String? mask_additional_residues
    String? in_format
  }
  command <<<
    esl-mask \
      ~{if defined(output_masked_sequences) then ("-o " +  '"' + output_masked_sequences + '"') else ""} \
      ~{true="-r" false="" reverse_mask_exclusive} \
      ~{true="-R" false="" random_access_fetch} \
      ~{true="-l" false="" convert_masked_residues_lower} \
      ~{if defined(convert_masked_residues_character) then ("-m " +  '"' + convert_masked_residues_character + '"') else ""} \
      ~{if defined(mask_additional_residues) then ("-x " +  '"' + mask_additional_residues + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""}
  >>>
  parameter_meta {
    output_masked_sequences: ": output masked sequences to file <f> instead of stdout"
    reverse_mask_exclusive: ": reverse: mask exclusive of <start>..<end>, not inclusive"
    random_access_fetch: ": random access: fetch seqs from ssi-indexed <sqfile>"
    convert_masked_residues_lower: ": convert masked residues to lower case"
    convert_masked_residues_character: ": convert masked residues to character <c>"
    mask_additional_residues: ": mask additional <n> residues beyond <start>,<end>"
    in_format: ": specify that input file is in format <s>"
  }
}