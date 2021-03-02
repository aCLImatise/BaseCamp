from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Rank_Pl_V0_1_0 = CommandToolBuilder(tool="rank.pl", base_command=["rank.pl"], inputs=[ToolInput(tag="in_precision", input_type=Int(optional=True), prefix="--precision", doc=InputDocumentation(doc="Rounds coefficient to N places (default = 4)")), ToolInput(tag="in_returns_count_ngrams", input_type=Boolean(optional=True), prefix="--N", doc=InputDocumentation(doc="Returns count of ngrams in common between files")), ToolInput(tag="in_source_file_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_source_file_two", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rank_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

