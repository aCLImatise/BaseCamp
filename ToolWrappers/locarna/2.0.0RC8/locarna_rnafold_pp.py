from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, Float, File, String

Locarna_Rnafold_Pp_V0_1_0 = CommandToolBuilder(tool="locarna_rnafold_pp", base_command=["locarna_rnafold_pp"], inputs=[ToolInput(tag="in_no_lp", input_type=Boolean(optional=True), prefix="--noLP", doc=InputDocumentation(doc="No lonely pairs")), ToolInput(tag="in_max_bp_span", input_type=Int(optional=True), prefix="--maxBPspan", doc=InputDocumentation(doc="(-1)\nLimit maximum base pair span (default=off)")), ToolInput(tag="in_stacking", input_type=Boolean(optional=True), prefix="--stacking", doc=InputDocumentation(doc="Compute stacking terms")), ToolInput(tag="in_dangling", input_type=Int(optional=True), prefix="--dangling", doc=InputDocumentation(doc="(2)\nDangling option value")), ToolInput(tag="in_in_loop", input_type=Boolean(optional=True), prefix="--in-loop", doc=InputDocumentation(doc="Compute in-loop probabilities")), ToolInput(tag="in_min_prob", input_type=Int(optional=True), prefix="--min-prob", doc=InputDocumentation(doc="(0.001)\nMinimal probability")), ToolInput(tag="in_p_unpaired_in_loop", input_type=Float(optional=True), prefix="--p_unpaired_in_loop", doc=InputDocumentation(doc="(0.0005)\nThreshold for prob_unpaired_in_loop")), ToolInput(tag="in_p_base_pair_in_loop", input_type=Float(optional=True), prefix="--p_basepair_in_loop", doc=InputDocumentation(doc="(0.0005)\nThreshold for prob_basepair_in_loop")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="()\nOutput file")), ToolInput(tag="in_force_ali_fold", input_type=Boolean(optional=True), prefix="--force-alifold", doc=InputDocumentation(doc="Force alifold for single sequences\n")), ToolInput(tag="in_help", input_type=String(), position=0, doc=InputDocumentation(doc="-V,--version")), ToolInput(tag="in_verbose", input_type=String(), position=0, doc=InputDocumentation(doc="-C,--use-struct-constraints"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="()\nOutput file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Locarna_Rnafold_Pp_V0_1_0().translate("wdl", allow_empty_container=True)

