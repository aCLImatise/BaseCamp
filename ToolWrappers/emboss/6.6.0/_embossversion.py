from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

_Embossversion_V0_1_0 = CommandToolBuilder(tool="_embossversion", base_command=["_embossversion"], inputs=[ToolInput(tag="in_full", input_type=Boolean(optional=True), prefix="-full", doc=InputDocumentation(doc="boolean    Show all EMBOSS version information fields")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="-outfile", doc=InputDocumentation(doc="outfile    [stdout] EMBOSS version output file"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="outfile    [stdout] EMBOSS version output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Embossversion_V0_1_0().translate("wdl", allow_empty_container=True)

