from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Mea_Mix_V0_1_0 = CommandToolBuilder(tool="mea_mix", base_command=["mea_mix"], inputs=[ToolInput(tag="in_gamma_one", input_type=Int(optional=True), prefix="--gamma1", doc=InputDocumentation(doc="base pair weight factor, first pair probabilities\n(default=`1.0')")), ToolInput(tag="in_gamma_two", input_type=Int(optional=True), prefix="--gamma2", doc=InputDocumentation(doc="base pair weight factor, second pair probabilities\n(default=`1.0')")), ToolInput(tag="in_reference", input_type=Int(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference structure; if given, then output TP FP FN\nTN SENS PPV F1 MCC")), ToolInput(tag="in_no_slide_rule", input_type=Boolean(optional=True), prefix="--no-slide-rule", doc=InputDocumentation(doc="Use slide rule [default: use slide rule]")), ToolInput(tag="in_no_conflict_rule", input_type=Boolean(optional=True), prefix="--no-conflict-rule", doc=InputDocumentation(doc="Use conflict rule [default: use conflict rule]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Turn on verbose output")), ToolInput(tag="in_me_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_dotplot_one_filename", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_dotplot_two_filename", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mea_Mix_V0_1_0().translate("wdl", allow_empty_container=True)

