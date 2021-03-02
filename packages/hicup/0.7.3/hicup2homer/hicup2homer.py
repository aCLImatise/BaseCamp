from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Hicup2Homer_V0_1_0 = CommandToolBuilder(tool="hicup2homer", base_command=["hicup2homer"], inputs=[ToolInput(tag="in_zip", input_type=File(optional=True), prefix="--zip", doc=InputDocumentation(doc="Write output to a gzip file"))], outputs=[ToolOutput(tag="out_zip", output_type=File(optional=True), selector=InputSelector(input_to_select="in_zip", type_hint=File()), doc=OutputDocumentation(doc="Write output to a gzip file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicup2Homer_V0_1_0().translate("wdl", allow_empty_container=True)

