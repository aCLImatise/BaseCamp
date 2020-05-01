#!/usr/bin/env cwl-runner

baseCommand:
- remove_long_intron_readthru_transcripts.pl
class: CommandLineTool
cwlVersion: v1.0
id: remove_long_intron_readthru_transcripts.pl
