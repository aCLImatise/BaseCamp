from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Hashid_Py_V0_1_0 = CommandToolBuilder(tool="hashID.py", base_command=["hashID.py"], inputs=[ToolInput(tag="in_profile", input_type=File(optional=True), prefix="--profile", doc=InputDocumentation(doc="Path to allele profile in tsv with first column #File")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Path to hash id output containing a hash sequence type")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force overwrite of existing result files"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Path to hash id output containing a hash sequence type"))], container="quay.io/biocontainers/chewiesnake:3.0.0--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hashid_Py_V0_1_0().translate("wdl")

