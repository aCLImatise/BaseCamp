from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, File, Boolean, String

Mea_Eval_V0_1_0 = CommandToolBuilder(tool="mea_eval", base_command=["mea_eval"], inputs=[ToolInput(tag="in_alpha", input_type=Float(optional=True), prefix="--alpha", doc=InputDocumentation(doc="slope of base pair distance penalty\n(default=`0.012')")), ToolInput(tag="in_beta", input_type=Int(optional=True), prefix="--beta", doc=InputDocumentation(doc="turning point of base pair distance penalty\n(default=`315')")), ToolInput(tag="in_gamma", input_type=Float(optional=True), prefix="--gamma", doc=InputDocumentation(doc="base pair weight factor  (default=`0.5')")), ToolInput(tag="in_delta", input_type=Float(optional=True), prefix="--delta", doc=InputDocumentation(doc="minimum penalty factor for base pairs\n(default=`0.003')")), ToolInput(tag="in_dp_dir", input_type=File(optional=True), prefix="--dpdir", doc=InputDocumentation(doc="Path to dot plot files  (default=`')")), ToolInput(tag="in_pred", input_type=File(optional=True), prefix="--pred", doc=InputDocumentation(doc="File with predicted structures to compare with input")), ToolInput(tag="in_start", input_type=Int(optional=True), prefix="--start", doc=InputDocumentation(doc="Restrict start of base pair span range  (default=`1')")), ToolInput(tag="in_stop", input_type=Int(optional=True), prefix="--stop", doc=InputDocumentation(doc="Restrict start of base pair span range  (default=`0')")), ToolInput(tag="in_no_slide_rule", input_type=Boolean(optional=True), prefix="--no-slide-rule", doc=InputDocumentation(doc="Use slide rule [default: use slide rule]")), ToolInput(tag="in_no_conflict_rule", input_type=Boolean(optional=True), prefix="--no-conflict-rule", doc=InputDocumentation(doc="Use conflict rule [default: use conflict rule]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Turn on verobose output")), ToolInput(tag="in_me_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mea_Eval_V0_1_0().translate("wdl", allow_empty_container=True)

