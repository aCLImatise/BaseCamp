version 1.0

task ExtractScaffold {
  input {
    String? _bank_operated
    String? iid_scaffold_extracted
    String? name_new_bank
    Boolean? list_scaffolds_stdout
  }
  command <<<
    extractScaffold \
      ~{if defined(_bank_operated) then ("-b " +  '"' + _bank_operated + '"') else ""} \
      ~{if defined(iid_scaffold_extracted) then ("-s " +  '"' + iid_scaffold_extracted + '"') else ""} \
      ~{if defined(name_new_bank) then ("-n " +  '"' + name_new_bank + '"') else ""} \
      ~{if (list_scaffolds_stdout) then "-l" else ""}
  >>>
  parameter_meta {
    _bank_operated: "- The bank to be operated on."
    iid_scaffold_extracted: "- The IID of the scaffold the be extracted ."
    name_new_bank: "- The name of the new bank consisting of the."
    list_scaffolds_stdout: "- list the scaffolds in the given bank to stdout. The order is"
  }
  output {
    File out_stdout = stdout()
  }
}