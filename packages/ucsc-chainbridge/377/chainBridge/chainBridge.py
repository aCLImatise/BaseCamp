from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String, Float

Chainbridge_V0_1_0 = CommandToolBuilder(tool="chainBridge", base_command=["chainBridge"], inputs=[ToolInput(tag="in_max_gap", input_type=Int(optional=True), prefix="-maxGap", doc=InputDocumentation(doc="Maximum size of double-sided gap to try to bridge (default: 6000)\nNote: there is no size limit for exact sequence matches")), ToolInput(tag="in_score_scheme", input_type=File(optional=True), prefix="-scoreScheme", doc=InputDocumentation(doc="Read the scoring matrix from a blastz-format file")), ToolInput(tag="in_linear_gap", input_type=File(optional=True), prefix="-linearGap", doc=InputDocumentation(doc="Specify type of linearGap to use.\nloose is chicken/human linear gap costs.\nmedium is mouse/human linear gap costs.\nOr specify a piecewise linearGap tab delimited file.\n(default: loose)\n")), ToolInput(tag="in_in_dot_chain", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_target_dot_two_bit", input_type=Float(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_query_dot_two_bit", input_type=Float(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chainbridge_V0_1_0().translate("wdl", allow_empty_container=True)

