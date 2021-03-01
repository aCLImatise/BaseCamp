from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fastqtofasta_V0_1_0 = CommandToolBuilder(tool="fastqtofasta", base_command=["fastqtofasta"], inputs=[ToolInput(tag="in_in_fast_q_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_fast_a_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastqtofasta_V0_1_0().translate("wdl", allow_empty_container=True)

