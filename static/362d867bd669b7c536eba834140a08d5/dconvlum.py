from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Dconvlum_V0_1_0 = CommandToolBuilder(tool="dconvlum", base_command=["dconvlum"], inputs=[ToolInput(tag="in_in_file", input_type=File(), position=0, doc=InputDocumentation(doc="VeriLUM characteristic curve file to be converted")), ToolInput(tag="in_out_file", input_type=File(), position=1, doc=InputDocumentation(doc="DCMTK display file to be written")), ToolInput(tag="in_ambient", input_type=String(), position=2, doc=InputDocumentation(doc="ambient light (cd/m^2, floating point value)"))], outputs=[ToolOutput(tag="out_out_file", output_type=File(), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc="DCMTK display file to be written"))], container="quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dconvlum_V0_1_0().translate("wdl")

