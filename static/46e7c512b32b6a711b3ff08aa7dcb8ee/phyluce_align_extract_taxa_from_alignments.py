from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, File, Int, Boolean, Array

Phyluce_Align_Extract_Taxa_From_Alignments_V0_1_0 = CommandToolBuilder(tool="phyluce_align_extract_taxa_from_alignments", base_command=["phyluce_align_extract_taxa_from_alignments"], inputs=[ToolInput(tag="in_alignments", input_type=Directory(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The input directory containing nexus files")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The directory in which to store the output files")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="The input format of the alignments")), ToolInput(tag="in_output_format", input_type=String(optional=True), prefix="--output-format", doc=InputDocumentation(doc="The input alignment format")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use.")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs.")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Process alignments in parallel using --cores for\nalignment. This is the number of PHYSICAL CPUs.")), ToolInput(tag="in_skip_check", input_type=Boolean(optional=True), prefix="--skip-check", doc=InputDocumentation(doc="Skip the initial taxon determination")), ToolInput(tag="in_exclude", input_type=Array(t=String(), optional=True), prefix="--exclude", doc=InputDocumentation(doc="Taxa to exclude")), ToolInput(tag="in_include", input_type=Array(t=String(), optional=True), prefix="--include", doc=InputDocumentation(doc="Taxa to include\n"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The directory in which to store the output files"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Extract_Taxa_From_Alignments_V0_1_0().translate("wdl", allow_empty_container=True)

