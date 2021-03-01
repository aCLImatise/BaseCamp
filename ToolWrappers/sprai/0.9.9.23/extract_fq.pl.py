from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Extract_Fq_Pl_V0_1_0 = CommandToolBuilder(tool="extract_fq.pl", base_command=["extract_fq.pl"], inputs=[ToolInput(tag="in_this", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_all_dot_fq", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_exclude_dot_list", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Fq_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

