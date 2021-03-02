from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, String

Strainest_Est_V0_1_0 = CommandToolBuilder(tool="strainest_est", base_command=["strainest", "est"], inputs=[ToolInput(tag="in_quality_thr", input_type=Int(optional=True), prefix="--quality-thr", doc=InputDocumentation(doc="base quality threshold  [default: 20]")), ToolInput(tag="in_min_depth_percentile", input_type=Float(optional=True), prefix="--min-depth-percentile", doc=InputDocumentation(doc="discard positions where the depth of\ncoverage is lower than the\nMIN_DEPTH_PERCENTILE percentile  [default:\n10]")), ToolInput(tag="in_max_depth_percentile", input_type=Float(optional=True), prefix="--max-depth-percentile", doc=InputDocumentation(doc="discard positions where the depth of\ncoverage is higher than the\nMAX_DEPTH_PERCENTILE percentile  [default:\n90]")), ToolInput(tag="in_min_depth_absolute", input_type=Int(optional=True), prefix="--min-depth-absolute", doc=InputDocumentation(doc="discard positions where the depth of\ncoverage is lower than the\nMIN_DEPTH_ABSOLUTE  [default: 6]")), ToolInput(tag="in_min_depth_base", input_type=Float(optional=True), prefix="--min-depth-base", doc=InputDocumentation(doc="filter base counts (set to 0) where they are\nlower then MIN_DEPTH_BASE x DoC (applied\nindependently for each allelic position)\n[default: 0.01]")), ToolInput(tag="in_max_ident_thr", input_type=Float(optional=True), prefix="--max-ident-thr", doc=InputDocumentation(doc="discard genomes with less than MAX_IDENT_THR\nmaximum identity  [default: 0.95]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads to use in model selection\n[default: 1]")), ToolInput(tag="in_indexed_dot", input_type=String(), position=0, doc=InputDocumentation(doc="EXAMPLES\nstrainest est snp.dgrp align.bam align -t 4"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Strainest_Est_V0_1_0().translate("wdl", allow_empty_container=True)

