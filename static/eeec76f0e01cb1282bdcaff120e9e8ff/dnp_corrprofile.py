from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Dnp_Corrprofile_V0_1_0 = CommandToolBuilder(tool="dnp_corrprofile", base_command=["dnp-corrprofile"], inputs=[ToolInput(tag="in_version_check", input_type=Boolean(optional=True), prefix="--version-check", doc=InputDocumentation(doc="Turn this option off to disable version update notifications of the\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1.")), ToolInput(tag="in_window", input_type=Int(optional=True), prefix="--window", doc=InputDocumentation(doc="Sliding window size, < than length. In range [10..146]. Default: 10.")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="Dinucleotide profile sequence length. In range [25..600]. Default:\n600.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print parameters and variables.")), ToolInput(tag="in_window_dot", input_type=String(), position=0, doc=InputDocumentation(doc="REQUIRED ARGUMENTS"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dnp_Corrprofile_V0_1_0().translate("wdl", allow_empty_container=True)

