from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Fermi_Splitfa_V0_1_0 = CommandToolBuilder(tool="fermi_splitfa", base_command=["fermi", "splitfa"], inputs=[ToolInput(tag="in_in_dot_fq", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_prefix", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_eight", input_type=Int(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi_Splitfa_V0_1_0().translate("wdl", allow_empty_container=True)

