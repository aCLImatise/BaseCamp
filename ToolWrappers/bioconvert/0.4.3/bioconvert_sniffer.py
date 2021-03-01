from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Array, File

Bioconvert_Sniffer_V0_1_0 = CommandToolBuilder(tool="bioconvert_sniffer", base_command=["bioconvert_sniffer"], inputs=[ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Set the outpout verbosity.")), ToolInput(tag="in_input", input_type=Array(t=String(), optional=True), prefix="--input", doc=InputDocumentation(doc="Set the input file.")), ToolInput(tag="in_quiet", input_type=File(optional=True), prefix="--quiet", doc=InputDocumentation(doc="simply return a two columns output with filename and\nfound format."))], outputs=[ToolOutput(tag="out_quiet", output_type=File(optional=True), selector=InputSelector(input_to_select="in_quiet", type_hint=File()), doc=OutputDocumentation(doc="simply return a two columns output with filename and\nfound format."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioconvert_Sniffer_V0_1_0().translate("wdl", allow_empty_container=True)

