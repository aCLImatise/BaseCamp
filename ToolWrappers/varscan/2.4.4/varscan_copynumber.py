from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Varscan_Copynumber_V0_1_0 = CommandToolBuilder(tool="varscan_copynumber", base_command=["varscan", "copynumber"], inputs=[ToolInput(tag="in_min_base_qual", input_type=Boolean(optional=True), prefix="--min-base-qual", doc=InputDocumentation(doc="- Minimum base quality to count for coverage [20]")), ToolInput(tag="in_min_map_qual", input_type=Boolean(optional=True), prefix="--min-map-qual", doc=InputDocumentation(doc="- Minimum read mapping quality to count for coverage [20]")), ToolInput(tag="in_min_coverage", input_type=Boolean(optional=True), prefix="--min-coverage", doc=InputDocumentation(doc="- Minimum coverage threshold for copynumber segments [20]")), ToolInput(tag="in_min_segment_size", input_type=Boolean(optional=True), prefix="--min-segment-size", doc=InputDocumentation(doc="- Minimum number of consecutive bases to report a segment [10]")), ToolInput(tag="in_max_segment_size", input_type=Boolean(optional=True), prefix="--max-segment-size", doc=InputDocumentation(doc="- Max size before a new segment is made [100]")), ToolInput(tag="in_p_value", input_type=Boolean(optional=True), prefix="--p-value", doc=InputDocumentation(doc="- P-value threshold for significant copynumber change-point [0.01]")), ToolInput(tag="in_data_ratio", input_type=Boolean(optional=True), prefix="--data-ratio", doc=InputDocumentation(doc="- The normal/tumor input data ratio for copynumber adjustment [1.0]")), ToolInput(tag="in_normal_pile_up", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tumor_pile_up", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varscan_Copynumber_V0_1_0().translate("wdl", allow_empty_container=True)

