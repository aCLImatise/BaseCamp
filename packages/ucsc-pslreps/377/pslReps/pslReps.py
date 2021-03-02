from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Pslreps_V0_1_0 = CommandToolBuilder(tool="pslReps", base_command=["pslReps"], inputs=[ToolInput(tag="in_no_head", input_type=Boolean(optional=True), prefix="-nohead", doc=InputDocumentation(doc="Don't add PSL header.")), ToolInput(tag="in_ignore_size", input_type=Boolean(optional=True), prefix="-ignoreSize", doc=InputDocumentation(doc="Will not weigh as much in favor of larger alignments.")), ToolInput(tag="in_no_introns", input_type=Boolean(optional=True), prefix="-noIntrons", doc=InputDocumentation(doc="Will not penalize for not having introns when calculating\nsize factor.")), ToolInput(tag="in_single_hit", input_type=Boolean(optional=True), prefix="-singleHit", doc=InputDocumentation(doc="Takes single best hit, not splitting into parts.")), ToolInput(tag="in_min_cover", input_type=Int(optional=True), prefix="-minCover", doc=InputDocumentation(doc="Minimum coverage to output.  Default is 0.")), ToolInput(tag="in_ignore_ns", input_type=Boolean(optional=True), prefix="-ignoreNs", doc=InputDocumentation(doc="Ignore Ns when calculating minCover.")), ToolInput(tag="in_min_ali", input_type=Int(optional=True), prefix="-minAli", doc=InputDocumentation(doc="Minimum alignment ratio.  Default is 0.93.")), ToolInput(tag="in_near_top", input_type=Int(optional=True), prefix="-nearTop", doc=InputDocumentation(doc="How much can deviate from top and be taken.\nDefault is 0.01.")), ToolInput(tag="in_min_near_top_size", input_type=Int(optional=True), prefix="-minNearTopSize", doc=InputDocumentation(doc="Minimum size of alignment that is near top\nfor alignment to be kept.  Default 30.")), ToolInput(tag="in_cover_q_sizes", input_type=File(optional=True), prefix="-coverQSizes", doc=InputDocumentation(doc="Tab-separate file with effective query sizes.\nWhen used with -minCover, this allows polyAs\nto be excluded from the coverage calculation.\n")), ToolInput(tag="in_in_dot_psl", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_psl", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pslreps_V0_1_0().translate("wdl", allow_empty_container=True)

