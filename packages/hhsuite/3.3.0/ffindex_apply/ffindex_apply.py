from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Ffindex_Apply_V0_1_0 = CommandToolBuilder(tool="ffindex_apply", base_command=["ffindex_apply"], inputs=[ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_k", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="")), ToolInput(tag="in_q", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="")), ToolInput(tag="in_data_filename", input_type=String(), position=0, doc=InputDocumentation(doc="Input ffindex data file.")), ToolInput(tag="in_index_filename", input_type=String(), position=1, doc=InputDocumentation(doc="Input ffindex index file."))], outputs=[ToolOutput(tag="out_i", output_type=File(optional=True), selector=InputSelector(input_to_select="in_i", type_hint=File()), doc=OutputDocumentation(doc="")), ToolOutput(tag="out_d", output_type=File(optional=True), selector=InputSelector(input_to_select="in_d", type_hint=File()), doc=OutputDocumentation(doc=""))], container="quay.io/biocontainers/hhsuite:3.3.0--py38pl526h6ed170a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ffindex_Apply_V0_1_0().translate("wdl")

