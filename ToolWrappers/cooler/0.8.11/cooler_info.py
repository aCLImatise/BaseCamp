from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Cooler_Info_V0_1_0 = CommandToolBuilder(tool="cooler_info", base_command=["cooler", "info"], inputs=[ToolInput(tag="in_field", input_type=String(optional=True), prefix="--field", doc=InputDocumentation(doc="Print the value of a specific info field.")), ToolInput(tag="in_metadata", input_type=Boolean(optional=True), prefix="--metadata", doc=InputDocumentation(doc="Print the user metadata in JSON format.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output file (defaults to stdout)")), ToolInput(tag="in_cool_path", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output file (defaults to stdout)"))], container="quay.io/biocontainers/cooler:0.8.11--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cooler_Info_V0_1_0().translate("wdl")

