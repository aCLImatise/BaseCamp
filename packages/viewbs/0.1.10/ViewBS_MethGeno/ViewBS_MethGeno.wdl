version 1.0

task ViewBSMethGeno {
  input {
    Boolean? genome_length
    Boolean? sample
    Boolean? win
    Boolean? step
    Boolean? minlength
    Boolean? maximum_number_chromosome
    Boolean? prefix
    Boolean? height
    Boolean? width
    String _outdir_
  }
  command <<<
    ViewBS MethGeno \
      ~{_outdir_} \
      ~{if (genome_length) then "--genomeLength" else ""} \
      ~{if (sample) then "--sample" else ""} \
      ~{if (win) then "--win" else ""} \
      ~{if (step) then "--step" else ""} \
      ~{if (minlength) then "--minLength" else ""} \
      ~{if (maximum_number_chromosome) then "--maxChromNumber" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (height) then "--height" else ""} \
      ~{if (width) then "--width" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0"
  }
  parameter_meta {
    genome_length: "[required]\\n- chromosome length information. Can be generated using 'samtools faidx\\nref.fa'"
    sample: "[required]\\n- Provide the sample information. [Format: methlationfile,samplename]\\nIt is possible to specify more than one sample pair by using the options\\n--sample more than once. The methylation information can also be read from\\na TEXT file. Instead of giving an explicit sample information pairs,\\nyou need to write \\\"file:\\\" followed by the name of the TEXT file.\\nSee details at: https://github.com/readbio/ViewBS"
    win: "[optional]\\n- Window size. Default: 500000"
    step: "[optional]\\n- Step size. Default: 500000"
    minlength: "[optional]\\n- Minimum length for a chromosome to output. Default: 0"
    maximum_number_chromosome: "[optional]\\n- Maximum number of chromosome IDs with lenght > 'minLength'.\\nDefault: 60."
    prefix: "- Prefix for the output  [Default: MethGeno]"
    height: "[optional]\\n- Height of PDF figure. Unit is cm. [default: 10]"
    width: "[optional]\\n- Width of PDF figure. Unit is cm. [default: 10]\\n"
    _outdir_: "--outdir\\n- Output directory. [Default: ./]"
  }
  output {
    File out_stdout = stdout()
  }
}