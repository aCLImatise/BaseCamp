version 1.0

task HubCheck {
  input {
    Boolean? no_tracks
    Boolean? check_settings
    Boolean? version
    Boolean? extra
    String? level
    Boolean? settings
    Boolean? udc_dir
    Boolean? print_meta
    Int? cache_time
    Int? verbose
  }
  command <<<
    hubCheck \
      ~{if (no_tracks) then "-noTracks" else ""} \
      ~{if (check_settings) then "-checkSettings" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (extra) then "-extra" else ""} \
      ~{if defined(level) then ("-level " +  '"' + level + '"') else ""} \
      ~{if (settings) then "-settings" else ""} \
      ~{if (udc_dir) then "-udcDir" else ""} \
      ~{if (print_meta) then "-printMeta" else ""} \
      ~{if defined(cache_time) then ("-cacheTime " +  '"' + cache_time + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    no_tracks: "- don't check remote files for tracks, just trackDb (faster)"
    check_settings: "- check trackDb settings to spec"
    version: "=[v?|url]     - version to validate settings against\\n(defaults to version in hub.txt, or current standard)"
    extra: "=[file|url]     - accept settings in this file (or url)"
    level: "|required  - reject settings below this support level"
    settings: "- just list settings with support level"
    udc_dir: "=/dir/to/cache - place to put cache for remote bigBed/bigWigs.\\nWill create this directory if not existing"
    print_meta: "- print the metadata for each track"
    cache_time: "- set cache refresh time in seconds, default 1"
    verbose: "- output verbosely"
  }
  output {
    File out_stdout = stdout()
  }
}