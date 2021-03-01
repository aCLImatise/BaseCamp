from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Artic_Tools_Align_Trim_V0_1_0 = CommandToolBuilder(tool="artic_tools_align_trim", base_command=["artic-tools", "align_trim"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--inputFile", doc=InputDocumentation(doc="The input BAM file (will try STDIN if not provided)")), ToolInput(tag="in_min_mapq", input_type=Int(optional=True), prefix="--minMAPQ", doc=InputDocumentation(doc="A minimum MAPQ threshold for processing alignments (default = 15)")), ToolInput(tag="in_normalise", input_type=Int(optional=True), prefix="--normalise", doc=InputDocumentation(doc="Subsample to N coverage per strand (default = 100, deactivate with 0)")), ToolInput(tag="in_report", input_type=File(optional=True), prefix="--report", doc=InputDocumentation(doc="Output an align_trim report to file")), ToolInput(tag="in_start", input_type=Boolean(optional=True), prefix="--start", doc=InputDocumentation(doc="Trim to start of primers instead of ends")), ToolInput(tag="in_remove_incorrect_pairs", input_type=Boolean(optional=True), prefix="--remove-incorrect-pairs", doc=InputDocumentation(doc="Remove amplicons with incorrect primer pairs")), ToolInput(tag="in_no_read_groups", input_type=Boolean(optional=True), prefix="--no-read-groups", doc=InputDocumentation(doc="Do not divide reads into groups in SAM output")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Output debugging information to STDERR")), ToolInput(tag="in_scheme", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_report", output_type=File(optional=True), selector=InputSelector(input_to_select="in_report", type_hint=File()), doc=OutputDocumentation(doc="Output an align_trim report to file"))], container="quay.io/biocontainers/artic-tools:0.3.0--hee4d88c_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Artic_Tools_Align_Trim_V0_1_0().translate("wdl")

