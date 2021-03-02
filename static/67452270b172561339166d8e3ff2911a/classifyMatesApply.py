from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean, File

Classifymatesapply_V0_1_0 = CommandToolBuilder(tool="classifyMatesApply", base_command=["classifyMatesApply"], inputs=[ToolInput(tag="in_read_fragments_here", input_type=String(optional=True), prefix="-G", doc=InputDocumentation(doc="Read fragments from here")), ToolInput(tag="in_read_results_here", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="Read results from here; any number of -r options can be supplied")), ToolInput(tag="in_also_dump_results", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Also dump the results to stdout")), ToolInput(tag="in_output_gatekeeper_edit", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output gatekeeper edit file"))], outputs=[ToolOutput(tag="out_output_gatekeeper_edit", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_gatekeeper_edit", type_hint=File()), doc=OutputDocumentation(doc="Output gatekeeper edit file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Classifymatesapply_V0_1_0().translate("wdl", allow_empty_container=True)

