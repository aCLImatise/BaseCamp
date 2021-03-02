from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Dcod2Lum_V0_1_0 = CommandToolBuilder(tool="dcod2lum", base_command=["dcod2lum"], inputs=[ToolInput(tag="in_in_file", input_type=File(), position=0, doc=InputDocumentation(doc="hardcopy characteristic curve file to be converted")), ToolInput(tag="in_out_file", input_type=File(), position=1, doc=InputDocumentation(doc="softcopy characteristic curve file to be written"))], outputs=[ToolOutput(tag="out_out_file", output_type=File(), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc="softcopy characteristic curve file to be written"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dcod2Lum_V0_1_0().translate("wdl", allow_empty_container=True)

