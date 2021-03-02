from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Bwa_Samse_V0_1_0 = CommandToolBuilder(tool="bwa_samse", base_command=["bwa", "samse"], inputs=[ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_prefix", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_do_tsai", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_fq", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bwa_Samse_V0_1_0().translate("wdl", allow_empty_container=True)

