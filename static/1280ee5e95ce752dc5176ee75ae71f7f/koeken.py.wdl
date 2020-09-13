version 1.0

task Koekenpy {
  input {
    Boolean? debug
    String? var_input
    Directory? location_place_resulting
    File? location_mapping_file
    String? level
    String? class
    Directory? subclass
    String? subject
    Float? pval
    Float? effect
    String? strict
    Array[String] compare
    File? split
    Directory? clade
    String? image
    String? dpi
    Boolean? pic_rust
    Boolean? v
  }
  command <<<
    koeken_py \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(location_place_resulting) then ("--output " +  '"' + location_place_resulting + '"') else ""} \
      ~{if defined(location_mapping_file) then ("--map " +  '"' + location_mapping_file + '"') else ""} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""} \
      ~{if defined(class) then ("--class " +  '"' + class + '"') else ""} \
      ~{if defined(subclass) then ("--subclass " +  '"' + subclass + '"') else ""} \
      ~{if defined(subject) then ("--subject " +  '"' + subject + '"') else ""} \
      ~{if defined(pval) then ("--pval " +  '"' + pval + '"') else ""} \
      ~{if defined(effect) then ("--effect " +  '"' + effect + '"') else ""} \
      ~{if defined(strict) then ("--strict " +  '"' + strict + '"') else ""} \
      ~{if defined(compare) then ("--compare " +  '"' + compare + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if (clade) then "--clade" else ""} \
      ~{if defined(image) then ("--image " +  '"' + image + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if (pic_rust) then "--picrust" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    debug: "Enable debugging"
    var_input: "Location of the OTU Table for main analysis. (Must be\\n.biom format)"
    location_place_resulting: "Location of the folder to place all resulting files.\\nIf folder does not exist, the program will create it."
    location_mapping_file: "Location of the mapping file associated with OTU\\nTable."
    level: "Level for which to use for summarize_taxa.py. [default\\n= 6]"
    class: "Location of the OTU Table for main analysis. (Must be\\n.biom format)"
    subclass: "Directory to place all the files."
    subject: "Only change if your Sample-ID column names differs.\\n[default] = #SampleID."
    pval: "Change alpha value for the Anova test (default 0.05)"
    effect: "Change the cutoff for logarithmic LDA score (default\\n2.0)."
    strict: "Change the strictness of the comparisons. Can be\\nchanged to less strict (1). [default = 0](more-\\nstrict)."
    compare: "Which groups should be kept to be compared against one\\nanother. [default = all factors]"
    split: "The name of the timepoint variable in you mapping\\nfile. This variable will be used to split the table\\nfor each value in this variable."
    clade: "Plot Lefse Cladogram for each output time point.\\nOutputs are placed in a new folder created in the\\nlefse results location."
    image: "Set the file type for the image create when using\\ncladogram setting"
    dpi: "Set DPI resolution for cladogram"
    pic_rust: "Run analysis with PICRUSt biom file. Must use the\\ncateogirze by function level 3. Next updates will\\nreflect the difference levels.\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_clade = "${in_clade}"
  }
}