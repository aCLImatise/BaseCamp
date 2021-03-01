version 1.0

task SierrapyRecipeAlignment {
  input {
    Boolean? gap_handling
  }
  command <<<
    sierrapy recipe alignment \
      ~{if (gap_handling) then "--gap-handling" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gap_handling: "[squeeze|hxb2strip]\\nSpecify how you want the recipe to handle\\nthe gaps.\\nSpecify \\\"squeeze\\\" to keep every\\ngap in the result alignment; \\\"hxb2_strip\\\" to\\nstrip out non-HXB2 columns."
  }
  output {
    File out_stdout = stdout()
  }
}