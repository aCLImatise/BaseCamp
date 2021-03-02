from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Sqt_Randomseq_V0_1_0 = CommandToolBuilder(tool="sqt_randomseq", base_command=["sqt", "randomseq"], inputs=[ToolInput(tag="in_minimum_length", input_type=Int(optional=True), prefix="--minimum-length", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sqt_Randomseq_V0_1_0().translate("wdl", allow_empty_container=True)

