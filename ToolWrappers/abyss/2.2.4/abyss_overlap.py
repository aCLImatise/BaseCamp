from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Abyss_Overlap_V0_1_0 = CommandToolBuilder(tool="abyss_overlap", base_command=["abyss-overlap"], inputs=[ToolInput(tag="in_min", input_type=Int(optional=True), prefix="--min", doc=InputDocumentation(doc="find matches at least N bp [50]")), ToolInput(tag="in_max", input_type=Int(optional=True), prefix="--max", doc=InputDocumentation(doc="find matches less than N bp [inf]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use N parallel threads [1]")), ToolInput(tag="in_sample", input_type=Int(optional=True), prefix="--sample", doc=InputDocumentation(doc="sample the suffix array [1]")), ToolInput(tag="in_tred", input_type=Boolean(optional=True), prefix="--tred", doc=InputDocumentation(doc="remove transitive edges [default]")), ToolInput(tag="in_no_tred", input_type=Boolean(optional=True), prefix="--no-tred", doc=InputDocumentation(doc="do not remove transitive edges")), ToolInput(tag="in_adj", input_type=Boolean(optional=True), prefix="--adj", doc=InputDocumentation(doc="output the results in adj format")), ToolInput(tag="in_dot", input_type=Boolean(optional=True), prefix="--dot", doc=InputDocumentation(doc="output the results in dot format [default]")), ToolInput(tag="in_sam", input_type=Boolean(optional=True), prefix="--sam", doc=InputDocumentation(doc="output the results in SAM format")), ToolInput(tag="in_ss", input_type=Boolean(optional=True), prefix="--SS", doc=InputDocumentation(doc="expect contigs to be oriented correctly")), ToolInput(tag="in_no_ss", input_type=Boolean(optional=True), prefix="--no-SS", doc=InputDocumentation(doc="no assumption about contig orientation")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Overlap_V0_1_0().translate("wdl", allow_empty_container=True)

