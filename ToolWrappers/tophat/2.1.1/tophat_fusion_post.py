from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Tophat_Fusion_Post_V0_1_0 = CommandToolBuilder(tool="tophat_fusion_post", base_command=["tophat-fusion-post"], inputs=[ToolInput(tag="in_num_fusion_reads", input_type=Boolean(optional=True), prefix="--num-fusion-reads", doc=InputDocumentation(doc="<int>       [ default: 3                  ]")), ToolInput(tag="in_num_fusion_pairs", input_type=Boolean(optional=True), prefix="--num-fusion-pairs", doc=InputDocumentation(doc="<int>       [ default: 2                  ]")), ToolInput(tag="in_num_fusion_both", input_type=Boolean(optional=True), prefix="--num-fusion-both", doc=InputDocumentation(doc="<int>       [ default: 5                  ]")), ToolInput(tag="in_max_num_fusions", input_type=Boolean(optional=True), prefix="--max-num-fusions", doc=InputDocumentation(doc="<int>       [ default: 500                ]")), ToolInput(tag="in_fusion_read_mismatches", input_type=Boolean(optional=True), prefix="--fusion-read-mismatches", doc=InputDocumentation(doc="<int>       [ default: 2                  ]")), ToolInput(tag="in_fusion_multi_reads", input_type=Boolean(optional=True), prefix="--fusion-multireads", doc=InputDocumentation(doc="<int>       [ default: 2                  ]")), ToolInput(tag="in_num_threads", input_type=Boolean(optional=True), prefix="--num-threads", doc=InputDocumentation(doc="<int>       [ default: 1                  ]")), ToolInput(tag="in_no_filter_by_annotation", input_type=Boolean(optional=True), prefix="--no-filter-by-annotation", doc=InputDocumentation(doc="<int>       [ default: 250                ]\nfor detailed help see http://tophat-fusion.sourceforge.net/manual.html\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tophat_Fusion_Post_V0_1_0().translate("wdl", allow_empty_container=True)

