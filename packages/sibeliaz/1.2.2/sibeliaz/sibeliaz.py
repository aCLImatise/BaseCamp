from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, Int, File

Sibeliaz_V0_1_0 = CommandToolBuilder(tool="sibeliaz", base_command=["sibeliaz"], inputs=[ToolInput(tag="in_n", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=Int(optional=True), prefix="-a", doc=InputDocumentation(doc="")), ToolInput(tag="in_m", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_b", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_k", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_o", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_o", type_hint=File()), doc=OutputDocumentation(doc=""))], container="quay.io/biocontainers/sibeliaz:1.2.2--he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sibeliaz_V0_1_0().translate("wdl")

