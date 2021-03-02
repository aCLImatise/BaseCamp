from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Parse_Matchannot_Py_V0_1_0 = CommandToolBuilder(tool="parse_matchAnnot.py", base_command=["parse_matchAnnot.py"], inputs=[ToolInput(tag="in_parse_fl_coverage", input_type=Boolean(optional=True), prefix="--parse_FL_coverage", doc=InputDocumentation(doc="")), ToolInput(tag="in_not_p_bid", input_type=Boolean(optional=True), prefix="--not_pbid", doc=InputDocumentation(doc="")), ToolInput(tag="in_parse", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_match_an_not", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_result", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parse_Matchannot_Py_V0_1_0().translate("wdl", allow_empty_container=True)

