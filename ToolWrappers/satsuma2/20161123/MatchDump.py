from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Matchdump_V0_1_0 = CommandToolBuilder(tool="MatchDump", base_command=["MatchDump"], inputs=[ToolInput(tag="in_k_match_output_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Matchdump_V0_1_0().translate("wdl", allow_empty_container=True)

