from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Mergegfa_Py_V0_1_0 = CommandToolBuilder(tool="mergegfa.py", base_command=["mergegfa.py"], inputs=[ToolInput(tag="in_one", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="GFA 2.0 file no.1 (format: 'xxx.gfa')")), ToolInput(tag="in_two", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="GFA 2.0 file no.2 (format: 'xxx.gfa')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Name of the output merged GFA file"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Name of the output merged GFA file"))], container="quay.io/biocontainers/mtglink:1.1.0--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mergegfa_Py_V0_1_0().translate("wdl")

