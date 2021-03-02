from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fermi2_Pl_Utglog_V0_1_0 = CommandToolBuilder(tool="fermi2.pl_utglog", base_command=["fermi2.pl", "utglog"], inputs=[ToolInput(tag="in_prefix", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi2_Pl_Utglog_V0_1_0().translate("wdl", allow_empty_container=True)

