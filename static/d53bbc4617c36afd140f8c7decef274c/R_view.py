from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

R_View_V0_1_0 = CommandToolBuilder(tool="R_view", base_command=["R-view"], inputs=[ToolInput(tag="in__be_verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": be verbose")), ToolInput(tag="in_maxd", input_type=Int(optional=True), prefix="--maxD", doc=InputDocumentation(doc=": max distance for contact definition  [8.0]  (x>0)")), ToolInput(tag="in_min_l", input_type=Int(optional=True), prefix="--minL", doc=InputDocumentation(doc=": min (j-i+1) for contact definition  [1]  (n>0)")), ToolInput(tag="in_min", input_type=Boolean(optional=True), prefix="--MIN", doc=InputDocumentation(doc=": Minimum distance btw any two atoms (except water)  [TRUE]")), ToolInput(tag="in_cb", input_type=Boolean(optional=True), prefix="--CB", doc=InputDocumentation(doc=": Distance btw beta Carbors (alphaC for Gly)")), ToolInput(tag="in_inter", input_type=Boolean(optional=True), prefix="--inter", doc=InputDocumentation(doc=": TRUE to calculate inter-chain contacts")), ToolInput(tag="in_send_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": send output to file <f>, not stdout")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc=": set RNG seed to <n>. Use 0 for a random seed.  [42]  (n>=0)")), ToolInput(tag="in_peptides", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_send_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_send_output_file", type_hint=File()), doc=OutputDocumentation(doc=": send output to file <f>, not stdout"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    R_View_V0_1_0().translate("wdl", allow_empty_container=True)

