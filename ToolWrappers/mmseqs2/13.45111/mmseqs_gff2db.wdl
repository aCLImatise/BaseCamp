version 1.0

task MmseqsGff2db {
  input {
    File? gff_type
    Int? id_offset
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs gff2db \
      ~{if defined(gff_type) then ("--gff-type " +  '"' + gff_type + '"') else ""} \
      ~{if defined(id_offset) then ("--id-offset " +  '"' + id_offset + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    gff_type: "Type in the GFF file to filter by []"
    id_offset: "Numeric ids in index file are offset by this value [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}