from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Freq2Group_Pl_V0_1_0 = CommandToolBuilder(tool="freq2group.pl", base_command=["freq2group.pl"], inputs=[ToolInput(tag="in_freq", input_type=String(), position=0, doc=InputDocumentation(doc="Bin     Count"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Freq2Group_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

