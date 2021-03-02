version 1.0

task GetLociFromGbpl {
  input {
    File? gb
    File? out
  }
  command <<<
    get_loci_from_gb_pl \
      ~{if defined(gb) then ("--gb " +  '"' + gb + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    gb: "file with gene structures in genbank format"
    out: "tabulator separated output file"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}