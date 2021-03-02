from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Hapbinconv_V0_1_0 = CommandToolBuilder(tool="hapbinconv", base_command=["hapbinconv"], inputs=[ToolInput(tag="in_hap", input_type=Boolean(optional=True), prefix="--hap", doc=InputDocumentation(doc="ASCII Hap file")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Binary output file"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Binary output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hapbinconv_V0_1_0().translate("wdl", allow_empty_container=True)

