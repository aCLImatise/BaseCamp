version 1.0

task RnaCdtrain {
  input {
    Int? chunksize
    String? contig
    Directory? positives_dir
    Directory? negatives_dir
    File? positives_list
    File? negatives_list
    Int? cross_validations
    Int? verbosity
    Int? cores
    File? plot_out
    File? model_out
  }
  command <<<
    rna_cd_train \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(contig) then ("--contig " +  '"' + contig + '"') else ""} \
      ~{if defined(positives_dir) then ("--positives-dir " +  '"' + positives_dir + '"') else ""} \
      ~{if defined(negatives_dir) then ("--negatives-dir " +  '"' + negatives_dir + '"') else ""} \
      ~{if defined(positives_list) then ("--positives-list " +  '"' + positives_list + '"') else ""} \
      ~{if defined(negatives_list) then ("--negatives-list " +  '"' + negatives_list + '"') else ""} \
      ~{if defined(cross_validations) then ("--cross-validations " +  '"' + cross_validations + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(plot_out) then ("--plot-out " +  '"' + plot_out + '"') else ""} \
      ~{if defined(model_out) then ("--model-out " +  '"' + model_out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chunksize: "Chunksize in bases. Default = 100"
    contig: "Name of mitochrondrial contig in your BAM\\nfiles. Default = chrM"
    positives_dir: "Path to directory containing positive BAM\\nfiles. Mutually exclusive with --positives-\\nlist"
    negatives_dir: "Path to directory containing negative BAM\\nfiles. Mutually exlusive with --negatives-\\nlist"
    positives_list: "Path to file containing a list of paths to\\npositive BAM files. Mutually exclusive with\\n--positives-dir"
    negatives_list: "Path to file containing a list of paths to\\nnegative BAM files. Mutuallly exclusive with\\n--negatives-dir"
    cross_validations: "Number of folds for cross validation run.\\nDefault = 3"
    verbosity: "Verbosity value for cross validation step.\\nDefault = 1"
    cores: "Number of cores to use for processing of BAM\\nfiles and cross validations. Default = 1"
    plot_out: "Optional path to PCA plot."
    model_out: "Path where model will be stored.  [required]"
  }
  output {
    File out_stdout = stdout()
  }
}