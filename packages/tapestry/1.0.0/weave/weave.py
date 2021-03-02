from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Array, String, Boolean, Directory

Weave_V0_1_0 = CommandToolBuilder(tool="weave", base_command=["weave"], inputs=[ToolInput(tag="in_assembly", input_type=File(optional=True), prefix="--assembly", doc=InputDocumentation(doc="filename of assembly in FASTA format (required)")), ToolInput(tag="in_reads", input_type=File(optional=True), prefix="--reads", doc=InputDocumentation(doc="filename of long reads in FASTQ format (required; must\nbe gzipped)")), ToolInput(tag="in_depth", input_type=File(optional=True), prefix="--depth", doc=InputDocumentation(doc="genome coverage to subsample from FASTQ file (default\n50)")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="minimum read length to retain when subsampling\n(default 10000 bp)")), ToolInput(tag="in_telomere", input_type=Array(t=String(), optional=True), prefix="--telomere", doc=InputDocumentation(doc="telomere sequence to search for")), ToolInput(tag="in_window_size", input_type=Int(optional=True), prefix="--windowsize", doc=InputDocumentation(doc="window size for ploidy calculations (default ~1/30th\nof contig N50 length, minimum 10000 bp)")), ToolInput(tag="in_force_read_output", input_type=Boolean(optional=True), prefix="--forcereadoutput", doc=InputDocumentation(doc="output read alignments whatever the assembly size\n(default, only output read alignments for <50 Mb\nassemblies)")), ToolInput(tag="in_min_contig_alignment", input_type=Int(optional=True), prefix="--mincontigalignment", doc=InputDocumentation(doc="minimum length of contig alignment to keep (default\n2000 bp)")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="directory to write output, default weave_output")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="number of parallel cores to use (default 1)"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="directory to write output, default weave_output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Weave_V0_1_0().translate("wdl", allow_empty_container=True)

