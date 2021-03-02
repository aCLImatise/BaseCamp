from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Qualfa2Fq_Pl_V0_1_0 = CommandToolBuilder(tool="qualfa2fq.pl", base_command=["qualfa2fq.pl"], inputs=[ToolInput(tag="in_in_dot_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_qual", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qualfa2Fq_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

