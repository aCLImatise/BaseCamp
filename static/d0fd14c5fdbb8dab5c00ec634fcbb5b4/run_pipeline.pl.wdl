version 1.0

task RunPipelinepl {
  input {
    File? format
    String? sort_positions
    String file_load_plugin
    String options
  }
  command <<<
    run_pipeline_pl \
      ~{file_load_plugin} \
      ~{options} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{if defined(sort_positions) then ("-sortPositions " +  '"' + sort_positions + '"') else ""}
  >>>
  parameter_meta {
    format: ": Import file format [SqrMatrix, Sequence, Unknown, Fasta, Hapmap, HapmapLIX, Plink, Phenotype, ProjectionAlignment, ProjectPCsandRunModelSelection, Phylip_Seq, Phylip_Inter, Table, Serial, HapmapDiploid, Text, VCF, HDF5, TOPM, HDF5Schema, Filter, NumericGenotype, TaxaList, PositionList, SqrMatrixRaw, SqrMatrixBin, GOBII, Depth, ReferenceProbability, Report, PlinkPhenotype, SqrMatrixDARwinDIS, Avro] (Default: Make Best Guess)"
    sort_positions: ": Whether to sort genotype positions if that's possible. (Default: false)"
    file_load_plugin: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}