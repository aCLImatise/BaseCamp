version 1.0

task Augustus {
  input {
    Int? max_tracks
    File? protein_profile
    String? progress
    Int? gff_three
    String? prediction_start
    String? utr
    String? no_in_frames_top
    String? no_prediction
    String? unique_geneid
    String? species
    String partial
    String intron_less
    String complete
    String at_least_one
    String exactly_one
  }
  command <<<
    augustus \
      ~{partial} \
      ~{intron_less} \
      ~{complete} \
      ~{at_least_one} \
      ~{exactly_one} \
      ~{if defined(max_tracks) then ("--maxtracks " +  '"' + max_tracks + '"') else ""} \
      ~{if defined(protein_profile) then ("--proteinprofile " +  '"' + protein_profile + '"') else ""} \
      ~{if defined(progress) then ("--progress " +  '"' + progress + '"') else ""} \
      ~{if defined(gff_three) then ("--gff3 " +  '"' + gff_three + '"') else ""} \
      ~{if defined(prediction_start) then ("--predictionStart " +  '"' + prediction_start + '"') else ""} \
      ~{if defined(utr) then ("--UTR " +  '"' + utr + '"') else ""} \
      ~{if defined(no_in_frames_top) then ("--noInFrameStop " +  '"' + no_in_frames_top + '"') else ""} \
      ~{if defined(no_prediction) then ("--noprediction " +  '"' + no_prediction + '"') else ""} \
      ~{if defined(unique_geneid) then ("--uniqueGeneId " +  '"' + unique_geneid + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    max_tracks: "For a description of these parameters see section 4 of README.TXT."
    protein_profile: "When this option is used the prediction will consider the protein profile provided as parameter.\\nThe protein profile extension is described in section 7 of README.TXT."
    progress: "show a progressmeter"
    gff_three: "output in gff3 format"
    prediction_start: "A and B define the range of the sequence for which predictions should be found."
    utr: "predict the untranslated regions in addition to the coding sequence. This currently works only for a subset of species."
    no_in_frames_top: "Do not report transcripts with in-frame stop codons. Otherwise, intron-spanning stop codons could occur. Default: false"
    no_prediction: "If true and input is in genbank format, no prediction is made. Useful for getting the annotated protein sequences."
    unique_geneid: "If true, output gene identifyers like this: seqname.gN"
    species: ""
    partial: ": allow prediction of incomplete genes at the sequence boundaries (default)"
    intron_less: ": only predict single-exon genes like in prokaryotes and some eukaryotes"
    complete: ": only predict complete genes"
    at_least_one: ": predict at least one complete gene"
    exactly_one: ": predict exactly one complete gene"
  }
  output {
    File out_stdout = stdout()
  }
}