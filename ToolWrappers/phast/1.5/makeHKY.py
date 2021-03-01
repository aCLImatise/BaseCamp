from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Boolean, Int, String

Makehky_V0_1_0 = CommandToolBuilder(tool="makeHKY", base_command=["makeHKY"], inputs=[ToolInput(tag="in_gc", input_type=Float(optional=True), prefix="--gc", doc=InputDocumentation(doc="Define base composition according to specified G+C composition,\nassuming P(A)=P(T) and P(C)=P(G).  Default is 0.4.")), ToolInput(tag="in_pi", input_type=Boolean(optional=True), prefix="--pi", doc=InputDocumentation(doc="<pi_A,pi_C,pi_G,pi_T>\nOverride --gc and define base composition explicitly.  Values will\nbe renormalized to ensure they sum exactly to one.")), ToolInput(tag="in_branch_length", input_type=Int(optional=True), prefix="--branch-length", doc=InputDocumentation(doc="Assume a tree consisting of a single branch of specified length.\nDefault value is 1.")), ToolInput(tag="in_tree", input_type=Int(optional=True), prefix="--tree", doc=InputDocumentation(doc="Override --branch-length and use specified tree.")), ToolInput(tag="in_below_dot", input_type=String(), position=0, doc=InputDocumentation(doc="OPTIONS:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makehky_V0_1_0().translate("wdl", allow_empty_container=True)

