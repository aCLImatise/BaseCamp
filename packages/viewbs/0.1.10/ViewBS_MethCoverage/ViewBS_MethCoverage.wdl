version 1.0

task ViewBSMethCoverage {
  input {
    Boolean? reference
    Boolean? sample
    Directory? outdir
    File? prefix
    Boolean? height
    Boolean? width
  }
  command <<<
    ViewBS MethCoverage \
      ~{if (reference) then "--reference" else ""} \
      ~{if (sample) then "--sample" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (height) then "--height" else ""} \
      ~{if (width) then "--width" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0"
  }
  parameter_meta {
    reference: "[required]\\n- reference genome in fasta file."
    sample: "[required]\\n- Provide the sample information. [Format: methlationfile,samplename]\\nIt is possible to specify more than one sample pair by using the options\\n--sample more than once. The methylation information can also be read from\\na TEXT file. Instead of giving an explicit sample information pairs,\\nyou need to write \\\"file:\\\" followed by the name of the TEXT file.\\nSee details at: https://github.com/readbio/ViewBS"
    outdir: "[optional]\\n- Provide the output directory. [default: ./]"
    prefix: "[optional]\\n- Provide prefix for the output file. [default: MethCoverage]"
    height: "[optional]\\n- Height of PDF figure. Unit is cm. [default: 10]"
    width: "[optional]\\n- Width of PDF figure. Unit is cm. [default: 10]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_prefix = "${in_prefix}"
  }
}