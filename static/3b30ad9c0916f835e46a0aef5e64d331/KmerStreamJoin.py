from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Kmerstreamjoin_V0_1_0 = CommandToolBuilder(tool="KmerStreamJoin", base_command=["KmerStreamJoin"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Filename for output\n--verbose            Print output at the end\n")), ToolInput(tag="in_merged_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Filename for output\n--verbose            Print output at the end\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kmerstreamjoin_V0_1_0().translate("wdl", allow_empty_container=True)

