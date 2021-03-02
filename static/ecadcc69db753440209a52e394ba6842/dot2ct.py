from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Dot2Ct_V0_1_0 = CommandToolBuilder(tool="dot2ct", base_command=["dot2ct"], inputs=[ToolInput(tag="in_quiet", input_type=File(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress unnecessary output. This option is implied when the output file is\n'-' (STDOUT).")), ToolInput(tag="in_bracket_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ct_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_quiet", output_type=File(optional=True), selector=InputSelector(input_to_select="in_quiet", type_hint=File()), doc=OutputDocumentation(doc="Suppress unnecessary output. This option is implied when the output file is\n'-' (STDOUT)."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dot2Ct_V0_1_0().translate("wdl", allow_empty_container=True)

