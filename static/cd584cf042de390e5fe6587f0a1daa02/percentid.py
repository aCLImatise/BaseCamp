from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Percentid_V0_1_0 = CommandToolBuilder(tool="percentid", base_command=["percentid"], inputs=[ToolInput(tag="in_multi_fast_a_or_stockholm_alignment", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/fsa:1.15.9--h8b12597_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Percentid_V0_1_0().translate("wdl")

