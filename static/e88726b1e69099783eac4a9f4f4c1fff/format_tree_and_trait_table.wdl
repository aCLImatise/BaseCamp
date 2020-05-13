version 1.0

task FormatTreeAndTraitTable.py {
  input {
    String addAdd
    String filterFilter
    String outputOutput
    String ensureEnsure
    Float convertConvert
    String addAdd
    Int removeRemove
    String inputInputTree
    String inputInputTraitTable
  }
  command <<<
    format_tree_and_trait_table.py \
      ~{if defined(addAdd) then ("-- Add " +  '"' + addAdd + '"') else ""} \
      ~{if defined(filterFilter) then ("-- Filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(outputOutput) then ("-- Output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(ensureEnsure) then ("-- Ensure " +  '"' + ensureEnsure + '"') else ""} \
      ~{if defined(convertConvert) then ("-- Convert " +  '"' + convertConvert + '"') else ""} \
      ~{if defined(addAdd) then ("-- Add " +  '"' + addAdd + '"') else ""} \
      ~{if defined(removeRemove) then ("-- Remove " +  '"' + removeRemove + '"') else ""} \
      ~{if defined(inputInputTree) then ("--input_tree " +  '"' + inputInputTree + '"') else ""} \
      ~{if defined(inputInputTraitTable) then ("--input_trait_table " +  '"' + inputInputTraitTable + '"') else ""}
  >>>
}