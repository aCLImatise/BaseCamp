from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

_Equicktandem_V0_1_0 = CommandToolBuilder(tool="_equicktandem", base_command=["_equicktandem"], inputs=[ToolInput(tag="in_max_repeat", input_type=Boolean(optional=True), prefix="-maxrepeat", doc=InputDocumentation(doc="integer    [600] Maximum repeat size (Any integer\nvalue)")), ToolInput(tag="in_threshold", input_type=Boolean(optional=True), prefix="-threshold", doc=InputDocumentation(doc="integer    [20] Threshold score (Any integer value)")), ToolInput(tag="in_orig_file", input_type=File(optional=True), prefix="-origfile", doc=InputDocumentation(doc="outfile    [*.equicktandem] Sanger Centre program\nquicktandem output file (optional)"))], outputs=[ToolOutput(tag="out_orig_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_orig_file", type_hint=File()), doc=OutputDocumentation(doc="outfile    [*.equicktandem] Sanger Centre program\nquicktandem output file (optional)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Equicktandem_V0_1_0().translate("wdl", allow_empty_container=True)

