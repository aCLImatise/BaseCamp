from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Seqhax_Rebarcode_V0_1_0 = CommandToolBuilder(tool="seqhax_rebarcode", base_command=["seqhax", "rebarcode"], inputs=[ToolInput(tag="in_output_interleaved_reads", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output interleaved reads to FILE. Use - for stdout. (default: no output)")), ToolInput(tag="in_r_one", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_interleaved_reads", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_interleaved_reads", type_hint=File()), doc=OutputDocumentation(doc="Output interleaved reads to FILE. Use - for stdout. (default: no output)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqhax_Rebarcode_V0_1_0().translate("wdl", allow_empty_container=True)

