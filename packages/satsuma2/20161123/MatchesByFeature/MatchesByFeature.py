from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Matchesbyfeature_V0_1_0 = CommandToolBuilder(tool="MatchesByFeature", base_command=["MatchesByFeature"], inputs=[ToolInput(tag="in_gff_three_file", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gff_features", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_match_files", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Matchesbyfeature_V0_1_0().translate("wdl", allow_empty_container=True)

