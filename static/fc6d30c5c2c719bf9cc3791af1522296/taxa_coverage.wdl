version 1.0

task TaxaCoverage.py {
  input {
    String? hits_fps
    String? tax_a_fp
  }
  command <<<
    taxa_coverage.py \
      ~{if defined(hits_fps) then ("--hits_fps " +  '"' + hits_fps + '"') else ""} \
      ~{if defined(tax_a_fp) then ("--taxa_fp " +  '"' + tax_a_fp + '"') else ""}
  >>>
  parameter_meta {
    hits_fps: "Target primer hits files to generate linkers against. Separate multiple files with a colon. [REQUIRED]"
    tax_a_fp: "Taxonomy mapping file. [REQUIRED]"
  }
}