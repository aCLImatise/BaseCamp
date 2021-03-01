from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Polya2Hints_Pl_V0_1_0 = CommandToolBuilder(tool="polyA2hints.pl", base_command=["polyA2hints.pl"], inputs=[ToolInput(tag="in_swap_strand", input_type=String(), position=0, doc=InputDocumentation(doc="swap strand, currently use this for polyT files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Polya2Hints_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

