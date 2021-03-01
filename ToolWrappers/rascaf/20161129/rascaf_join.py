from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Rascaf_Join_V0_1_0 = CommandToolBuilder(tool="rascaf_join", base_command=["rascaf-join"], inputs=[ToolInput(tag="in_path_rascaf_output", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc=": the path to the rascaf output. Can use multiple of -r. (required)")), ToolInput(tag="in_prefix_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": the prefix of the output file. (default: rascaf_scaffold)")), ToolInput(tag="in_ms", input_type=Int(optional=True), prefix="-ms", doc=InputDocumentation(doc=": minimum support alignments for the connection (default: 2)")), ToolInput(tag="in_ignore_gap", input_type=Boolean(optional=True), prefix="-ignoreGap", doc=InputDocumentation(doc=": ignore the gap size, which do not consider the number of Ns between contigs (default: not used)")), ToolInput(tag="in_ras_caf_join", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_path_rascaf_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_path_rascaf_output", type_hint=File()), doc=OutputDocumentation(doc=": the path to the rascaf output. Can use multiple of -r. (required)")), ToolOutput(tag="out_prefix_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix_output_file", type_hint=File()), doc=OutputDocumentation(doc=": the prefix of the output file. (default: rascaf_scaffold)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rascaf_Join_V0_1_0().translate("wdl", allow_empty_container=True)

