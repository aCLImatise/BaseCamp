#!/usr/bin/env cwl-runner

baseCommand:
- deduplicate_contigs.sh
class: CommandLineTool
cwlVersion: v1.0
id: deduplicate_contigs.sh
