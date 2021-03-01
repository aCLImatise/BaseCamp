version 1.0

task Mol2rtfpy {
  input {
    String? n
    File? input_mol_file
    File? output_rtf_file
    String? original_residue_name
    File? ref
  }
  command <<<
    mol2rtf_py \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(input_mol_file) then ("-i " +  '"' + input_mol_file + '"') else ""} \
      ~{if defined(output_rtf_file) then ("-o " +  '"' + output_rtf_file + '"') else ""} \
      ~{if defined(original_residue_name) then ("-r " +  '"' + original_residue_name + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    n: "[--ref reference_rtf_file]"
    input_mol_file: "Input mol2 file"
    output_rtf_file: "Output RTF file"
    original_residue_name: "Original residue name"
    ref: "Reference RTF file"
  }
  output {
    File out_stdout = stdout()
    File out_output_rtf_file = "${in_output_rtf_file}"
  }
}