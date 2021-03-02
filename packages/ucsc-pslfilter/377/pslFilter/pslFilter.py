from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, Float

Pslfilter_V0_1_0 = CommandToolBuilder(tool="pslFilter", base_command=["pslFilter"], inputs=[ToolInput(tag="in_dir", input_type=Boolean(optional=True), prefix="-dir", doc=InputDocumentation(doc="Input files are directories rather than single files")), ToolInput(tag="in_reward", input_type=Int(optional=True), prefix="-reward", doc=InputDocumentation(doc="(default 1) Bonus to score for match")), ToolInput(tag="in_cost", input_type=Int(optional=True), prefix="-cost", doc=InputDocumentation(doc="(default 1) Penalty to score for mismatch")), ToolInput(tag="in_gap_open_cost", input_type=Int(optional=True), prefix="-gapOpenCost", doc=InputDocumentation(doc="(default 4) Penalty for gap opening")), ToolInput(tag="in_gap_size_log_mod", input_type=Float(optional=True), prefix="-gapSizeLogMod", doc=InputDocumentation(doc="(default 1.00) Penalty for gap sizes")), ToolInput(tag="in_min_score", input_type=Int(optional=True), prefix="-minScore", doc=InputDocumentation(doc="(default 15) Minimum score to pass filter")), ToolInput(tag="in_min_match", input_type=Int(optional=True), prefix="-minMatch", doc=InputDocumentation(doc="(default 30) Min match (including repeats to pass)")), ToolInput(tag="in_min_unique_match", input_type=Boolean(optional=True), prefix="-minUniqueMatch", doc=InputDocumentation(doc="(default 20) Min non-repeats to pass)")), ToolInput(tag="in_max_bad_ppt", input_type=Boolean(optional=True), prefix="-maxBadPpt", doc=InputDocumentation(doc="(default 700) Maximum divergence in parts per thousand")), ToolInput(tag="in_min_ali", input_type=Boolean(optional=True), prefix="-minAli", doc=InputDocumentation(doc="(default 600) Minimum ratio query in alignment in ppt")), ToolInput(tag="in_no_head", input_type=Boolean(optional=True), prefix="-noHead", doc=InputDocumentation(doc="Don't output psl header")), ToolInput(tag="in_minal_it", input_type=Boolean(optional=True), prefix="-minAliT", doc=InputDocumentation(doc="(default 0) Like minAli for target"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pslfilter_V0_1_0().translate("wdl", allow_empty_container=True)

