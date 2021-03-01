from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File, Int

Seq2Science_Run_Done__V0_1_0 = CommandToolBuilder(tool="seq2science_run_done.", base_command=["seq2science", "run", "done."], inputs=[ToolInput(tag="in_unlock", input_type=Boolean(optional=True), prefix="--unlock", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_j", input_type=String(optional=True), prefix="-j", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_two_science", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_run", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seq2Science_Run_Done__V0_1_0().translate("wdl", allow_empty_container=True)

