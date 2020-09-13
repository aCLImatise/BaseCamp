version 1.0

task CmsearchToBedbin {
  input {
    File? cm_search_path
    String? input_browser_settings
    String? input_track_name
    String? input_track_description
    Boolean? input_item_rgb
    Int? input_track_color
    Boolean? sort_bed
    Boolean? with_header
    Boolean? verbose
    Boolean? quiet
    String all
  }
  command <<<
    cmsearchToBed_bin \
      ~{all} \
      ~{if defined(cm_search_path) then ("--cmsearchpath " +  '"' + cm_search_path + '"') else ""} \
      ~{if defined(input_browser_settings) then ("--inputbrowsersettings " +  '"' + input_browser_settings + '"') else ""} \
      ~{if defined(input_track_name) then ("--inputtrackname " +  '"' + input_track_name + '"') else ""} \
      ~{if defined(input_track_description) then ("--inputtrackdescription " +  '"' + input_track_description + '"') else ""} \
      ~{if (input_item_rgb) then "--inputitemrgb" else ""} \
      ~{if defined(input_track_color) then ("--inputtrackcolor " +  '"' + input_track_color + '"') else ""} \
      ~{if (sort_bed) then "--sortbed" else ""} \
      ~{if (with_header) then "--withheader" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    cm_search_path: "Path to input cmsearch file"
    input_browser_settings: "Browser settings. Default: browser hide"
    input_track_name: "Name of the track Default: PredictedRNA"
    input_track_description: "Description of the track. Default: RNA\\nloci predicted by cmsearch"
    input_item_rgb: "RGB Color of the track. Default: True"
    input_track_color: "RGB Color of the track. Default: 255,0,0"
    sort_bed: "Sort entries of Bed file by start end end\\ncooridinates. Default: True"
    with_header: "Output contains bed header. Default: True"
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
    all: "-y --inputbedvisibility=INT      Visibility setting of track. Default: 2"
  }
  output {
    File out_stdout = stdout()
  }
}