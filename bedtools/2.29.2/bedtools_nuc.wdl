version 1.0

task BedtoolsNuc {
  input {
    String? fi
    String? bed
  }
  command <<<
    bedtools nuc \
      ~{if defined(fi) then ("-fi " +  '"' + fi + '"') else ""} \
      ~{if defined(bed) then ("-bed " +  '"' + bed + '"') else ""}
  >>>
  parameter_meta {
    fi: ""
    bed: ""
  }
}