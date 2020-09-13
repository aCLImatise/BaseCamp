version 1.0

task KallistoInspect {
  input {
    File? gfa
    File? gtf
    File? bed
    File index_file
  }
  command <<<
    kallisto inspect \
      ~{index_file} \
      ~{if defined(gfa) then ("--gfa " +  '"' + gfa + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""}
  >>>
  parameter_meta {
    gfa: "Filename for GFA output of T-DBG"
    gtf: "Filename for GTF file"
    bed: "Filename for BED output (default: index + \\\".bed\\\")"
    index_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_gfa = "${in_gfa}"
    File out_bed = "${in_bed}"
  }
}