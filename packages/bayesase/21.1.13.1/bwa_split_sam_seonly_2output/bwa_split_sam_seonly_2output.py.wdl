version 1.0

task BwaSplitSamSeonly2outputpy {
  input {
    File? sam
    File? summ_name
    File? summ
    Boolean? uniq
    String _uniq_uniq
  }
  command <<<
    bwa_split_sam_seonly_2output_py \
      ~{_uniq_uniq} \
      ~{if defined(sam) then ("--sam " +  '"' + sam + '"') else ""} \
      ~{if defined(summ_name) then ("--summname " +  '"' + summ_name + '"') else ""} \
      ~{if defined(summ) then ("--summ " +  '"' + summ + '"') else ""} \
      ~{if (uniq) then "--uniq" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bayesase:21.1.13.1--py_0"
  }
  parameter_meta {
    sam: "Name of the SAM file [required]"
    summ_name: "Name of the summary file"
    summ: "summary file"
    uniq: ""
    _uniq_uniq: "--uniq UNIQ           mapped reads file"
  }
  output {
    File out_stdout = stdout()
  }
}