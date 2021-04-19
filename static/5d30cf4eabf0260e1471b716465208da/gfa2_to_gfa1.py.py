from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float

Gfa2_To_Gfa1_Py_V0_1_0 = CommandToolBuilder(tool="gfa2_to_gfa1.py", base_command=["gfa2_to_gfa1.py"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="GFA 2.0 file (format: 'xxx.gfa')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output directory for saving the GFA 1.0 file")), ToolInput(tag="in_gfa_dot_two_to_gfa_do_tone_do_tpy", input_type=Float(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output directory for saving the GFA 1.0 file"))], container="quay.io/biocontainers/mtglink:1.1.0--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gfa2_To_Gfa1_Py_V0_1_0().translate("wdl")

