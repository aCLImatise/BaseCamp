version 1.0

task LociCounterWithLabels.py {
  input {
    String? fai_file
    Boolean? beds
    String? bed_out
    Boolean? labels
  }
  command <<<
    lociCounterWithLabels.py \
      ~{if defined(fai_file) then ("--fai-file " +  '"' + fai_file + '"') else ""} \
      ~{true="-beds" false="" beds} \
      ~{if defined(bed_out) then ("--bed-out " +  '"' + bed_out + '"') else ""} \
      ~{true="-labels" false="" labels}
  >>>
  parameter_meta {
    fai_file: ".fa.fai file (default: None)"
    beds: "[BED_FILES [BED_FILES ...]], --bed-files [BED_FILES [BED_FILES ...]] BED files (default: None)"
    bed_out: "BED file out (default: None)"
    labels: "[BED_LABELS [BED_LABELS ...]], --bed-labels [BED_LABELS [BED_LABELS ...]] Use these labels instead of bed file names (default: None)"
  }
}