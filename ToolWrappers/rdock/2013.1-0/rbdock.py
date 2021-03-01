from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Rbdock_V0_1_0 = CommandToolBuilder(tool="rbdock", base_command=["rbdock"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="-input", doc=InputDocumentation(doc="input file")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="-output", doc=InputDocumentation(doc="output file")), ToolInput(tag="in_receptor", input_type=File(optional=True), prefix="-receptor", doc=InputDocumentation(doc="receptor file")), ToolInput(tag="in_protocol", input_type=File(optional=True), prefix="-protocol", doc=InputDocumentation(doc="protocol file")), ToolInput(tag="in_runs", input_type=Int(optional=True), prefix="-runs", doc=InputDocumentation(doc="number of runs")), ToolInput(tag="in_trace", input_type=Int(optional=True), prefix="-trace", doc=InputDocumentation(doc="trace level for debugging")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="-seed", doc=InputDocumentation(doc="random seed")), ToolInput(tag="in_ap", input_type=Boolean(optional=True), prefix="-ap", doc=InputDocumentation(doc="protonate groups")), ToolInput(tag="in_an", input_type=Boolean(optional=True), prefix="-an", doc=InputDocumentation(doc="DEprotonate groups")), ToolInput(tag="in_all_h", input_type=Boolean(optional=True), prefix="-allH", doc=InputDocumentation(doc="read all Hs")), ToolInput(tag="in_target", input_type=String(optional=True), prefix="-target", doc=InputDocumentation(doc="target score")), ToolInput(tag="in_cont", input_type=Boolean(optional=True), prefix="-cont", doc=InputDocumentation(doc="continue even if target met")), ToolInput(tag="in_receptor_dot_prm", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_protocol_dot_prm", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_file", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_outfile", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbdock_V0_1_0().translate("wdl", allow_empty_container=True)

