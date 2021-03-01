from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Samtools_Targetcut_V0_1_0 = CommandToolBuilder(tool="samtools_targetcut", base_command=["samtools", "targetcut"], inputs=[ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_two", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="")), ToolInput(tag="in_one", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="")), ToolInput(tag="in_zero", input_type=Int(optional=True), prefix="-0", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_q", input_type=Int(optional=True), prefix="-Q", doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Targetcut_V0_1_0().translate("wdl", allow_empty_container=True)

