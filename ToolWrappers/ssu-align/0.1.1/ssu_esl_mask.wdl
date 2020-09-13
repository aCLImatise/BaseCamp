version 1.0

task Ssueslmask {
  input {
    File? output_masked_sequences
    Boolean? reverse_mask_exclusive
    Boolean? random_access_fetch
    Boolean? convert_masked_residues_lower
    String? convert_masked_residues_character
    String? mask_additional_n
    File? in_format
  }
  command <<<
    ssu_esl_mask \
      ~{if defined(output_masked_sequences) then ("-o " +  '"' + output_masked_sequences + '"') else ""} \
      ~{if (reverse_mask_exclusive) then "-r" else ""} \
      ~{if (random_access_fetch) then "-R" else ""} \
      ~{if (convert_masked_residues_lower) then "-l" else ""} \
      ~{if defined(convert_masked_residues_character) then ("-m " +  '"' + convert_masked_residues_character + '"') else ""} \
      ~{if defined(mask_additional_n) then ("-x " +  '"' + mask_additional_n + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""}
  >>>
  parameter_meta {
    output_masked_sequences: ": output masked sequences to file <f> instead of stdout"
    reverse_mask_exclusive: ": reverse: mask exclusive of <start>..<end>, not inclusive"
    random_access_fetch: ": random access: fetch seqs from ssi-indexed <sqfile>"
    convert_masked_residues_lower: ": convert masked residues to lower case"
    convert_masked_residues_character: ": convert masked residues to character <c>"
    mask_additional_n: ": mask additional <n> residues beyond <start>,<end>"
    in_format: ": specify that input file is in format <s>"
  }
  output {
    File out_stdout = stdout()
    File out_output_masked_sequences = "${in_output_masked_sequences}"
  }
}