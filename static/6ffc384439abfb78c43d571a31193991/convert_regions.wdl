version 1.0

task Convertregions {
  input {
    String? output_format
    File? chromosome_sizes
    String? subset
    File? force_overwrite
    Boolean? work_in_tmp
    String input_file
    String output_file
  }
  command <<<
    convert_regions \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(chromosome_sizes) then ("--chromosome-sizes " +  '"' + chromosome_sizes + '"') else ""} \
      ~{if defined(subset) then ("--subset " +  '"' + subset + '"') else ""} \
      ~{if (force_overwrite) then "--force-overwrite" else ""} \
      ~{if (work_in_tmp) then "--work-in-tmp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/genomic_regions:0.0.10--py_0"
  }
  parameter_meta {
    output_format: "Output format (bed (BED), bigwig (BigWig), bw\\n(BigWig), gff (GFF)"
    chromosome_sizes: "Genome identifier (mm10, hg38, ...) or chrom.sizes\\nfile"
    subset: "Regions subset identifier of the form\\n<chr>[:<start>-<end>]"
    force_overwrite: "Force overwriting of existing output file"
    work_in_tmp: "Work in temporary directory"
    input_file: "Input file"
    output_file: "Output file"
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite = "${in_force_overwrite}"
  }
}