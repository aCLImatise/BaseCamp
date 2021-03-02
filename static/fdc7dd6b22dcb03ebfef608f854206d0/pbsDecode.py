from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Pbsdecode_V0_1_0 = CommandToolBuilder(tool="pbsDecode", base_command=["pbsDecode"], inputs=[ToolInput(tag="in_start", input_type=Int(optional=True), prefix="--start", doc=InputDocumentation(doc="Decode only the subsequence starting at position <sidx>.\nIndexing starts with 1.")), ToolInput(tag="in_end", input_type=Int(optional=True), prefix="--end", doc=InputDocumentation(doc="Decode only the subsequence ending at position <eidx>.\nIndexing starts with 1.")), ToolInput(tag="in_discard_gaps", input_type=Boolean(optional=True), prefix="--discard-gaps", doc=InputDocumentation(doc="Do not report gaps in the PBS.")), ToolInput(tag="in_input_dot_bin", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_code_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbsdecode_V0_1_0().translate("wdl", allow_empty_container=True)

