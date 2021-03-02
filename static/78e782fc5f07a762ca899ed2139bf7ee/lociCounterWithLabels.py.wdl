version 1.0

task LociCounterWithLabelspy {
  input {
    File? fai_file
    Array[String] bed_files
    File? bed_out
    Boolean? labels
  }
  command <<<
    lociCounterWithLabels_py \
      ~{if defined(fai_file) then ("--fai-file " +  '"' + fai_file + '"') else ""} \
      ~{if defined(bed_files) then ("--bed-files " +  '"' + bed_files + '"') else ""} \
      ~{if defined(bed_out) then ("--bed-out " +  '"' + bed_out + '"') else ""} \
      ~{if (labels) then "-labels" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/somaticseq:3.6.2--py_0"
  }
  parameter_meta {
    fai_file: ".fa.fai file (default: None)"
    bed_files: "BED files (default: None)"
    bed_out: "BED file out (default: None)"
    labels: "[BED_LABELS [BED_LABELS ...]], --bed-labels [BED_LABELS [BED_LABELS ...]]\\nUse these labels instead of bed file names (default:\\nNone)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_bed_out = "${in_bed_out}"
  }
}