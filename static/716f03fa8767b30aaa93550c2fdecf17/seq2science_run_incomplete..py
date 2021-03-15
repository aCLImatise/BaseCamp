from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Seq2Science_Run_Incomplete__V0_1_0 = CommandToolBuilder(tool="seq2science_run_incomplete.", base_command=["seq2science", "run", "incomplete."], inputs=[ToolInput(tag="in_k", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="")), ToolInput(tag="in_skip_rerun", input_type=Boolean(optional=True), prefix="--skip-rerun", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_j", input_type=String(optional=True), prefix="-j", doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_two_science", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_run", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/seq2science:0.5.0--pypy_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seq2Science_Run_Incomplete__V0_1_0().translate("wdl")

