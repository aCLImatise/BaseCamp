from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, String

Gfatools_Asm_V0_1_0 = CommandToolBuilder(tool="gfatools_asm", base_command=["gfatools", "asm"], inputs=[ToolInput(tag="in_transitive_reduction_fuzzy", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="transitive reduction (fuzzy length)")), ToolInput(tag="in_cut_tips_length", input_type=Int(), prefix="-t", doc=InputDocumentation(doc="cut tips (tip seg count, tip length [inf])")), ToolInput(tag="in_pop_bubbles_max", input_type=Int(), prefix="-b", doc=InputDocumentation(doc="pop bubbles (max radius, max deletions [inf])")), ToolInput(tag="in_pop_bubbles_along", input_type=Int(), prefix="-B", doc=InputDocumentation(doc="pop bubbles along with small tips (max radius, max del [inf])")), ToolInput(tag="in_cut_short_ratio", input_type=Float(), prefix="-o", doc=InputDocumentation(doc="cut short overlaps (ratio to the longest overlap, overlap length [0])")), ToolInput(tag="in_cut_overlaps_topology", input_type=Float(), prefix="-c", doc=InputDocumentation(doc="cut overlaps, topology aware (ratio, tip seg count [3], tip length [inf])")), ToolInput(tag="in_generate_unitigs", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="generate unitigs")), ToolInput(tag="in_verbose_level", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose level [2]")), ToolInput(tag="in_in_dot_gfa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gfatools:0.5--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gfatools_Asm_V0_1_0().translate("wdl")

