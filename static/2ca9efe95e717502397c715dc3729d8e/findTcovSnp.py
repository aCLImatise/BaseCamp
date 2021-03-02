from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Findtcovsnp_V0_1_0 = CommandToolBuilder(tool="findTcovSnp", base_command=["findTcovSnp"], inputs=[ToolInput(tag="in_prune_low_quality", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="Prune low quality discrepancies from report (no qv > 30)")), ToolInput(tag="in_amb", input_type=Boolean(optional=True), prefix="-amb", doc=InputDocumentation(doc="Only print contig positions with an ambiguity code")), ToolInput(tag="in_min_qv", input_type=Boolean(optional=True), prefix="-minqv", doc=InputDocumentation(doc="Specify minimum cummulative qv of disagreeing reads")), ToolInput(tag="in_min_snp", input_type=Int(optional=True), prefix="-minsnp", doc=InputDocumentation(doc="minimum number of consistent disagreeing reads")), ToolInput(tag="in_qvs", input_type=Boolean(optional=True), prefix="-qvs", doc=InputDocumentation(doc="Print Quality Values stats (max, avg) [ Default: -noqvs ]")), ToolInput(tag="in_prefix", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Findtcovsnp_V0_1_0().translate("wdl", allow_empty_container=True)

