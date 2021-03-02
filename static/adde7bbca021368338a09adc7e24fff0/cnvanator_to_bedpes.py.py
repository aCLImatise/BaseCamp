from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Cnvanator_To_Bedpes_Py_V0_1_0 = CommandToolBuilder(tool="cnvanator_to_bedpes.py", base_command=["cnvanator_to_bedpes.py"], inputs=[ToolInput(tag="in_cnv_calls", input_type=File(optional=True), prefix="--cnv_calls", doc=InputDocumentation(doc="Output file from CNVanator")), ToolInput(tag="in_cnv_kit", input_type=Boolean(optional=True), prefix="--cnvkit", doc=InputDocumentation(doc="input is .cns file from cnvkit")), ToolInput(tag="in_del_o", input_type=File(optional=True), prefix="--del_o", doc=InputDocumentation(doc="Deletion output bedpe file name")), ToolInput(tag="in_dup_o", input_type=File(optional=True), prefix="--dup_o", doc=InputDocumentation(doc="Duplication output bedpe file name")), ToolInput(tag="in_breakpoint_size", input_type=Int(optional=True), prefix="--breakpoint_size", doc=InputDocumentation(doc="The total size of the resulting breakpoint, centered\non the call edge\n"))], outputs=[ToolOutput(tag="out_cnv_calls", output_type=File(optional=True), selector=InputSelector(input_to_select="in_cnv_calls", type_hint=File()), doc=OutputDocumentation(doc="Output file from CNVanator")), ToolOutput(tag="out_del_o", output_type=File(optional=True), selector=InputSelector(input_to_select="in_del_o", type_hint=File()), doc=OutputDocumentation(doc="Deletion output bedpe file name")), ToolOutput(tag="out_dup_o", output_type=File(optional=True), selector=InputSelector(input_to_select="in_dup_o", type_hint=File()), doc=OutputDocumentation(doc="Duplication output bedpe file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnvanator_To_Bedpes_Py_V0_1_0().translate("wdl", allow_empty_container=True)

