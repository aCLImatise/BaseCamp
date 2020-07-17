version 1.0

task NucBed {
  input {
    String? fi
    String? bed
    String bed_tools
    String nuc
  }
  command <<<
    nucBed \
      ~{bed_tools} \
      ~{nuc} \
      ~{if defined(fi) then ("-fi " +  '"' + fi + '"') else ""} \
      ~{if defined(bed) then ("-bed " +  '"' + bed + '"') else ""}
  >>>
  parameter_meta {
    fi: ""
    bed: ""
    bed_tools: ""
    nuc: ""
  }
}