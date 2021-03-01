from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File, Boolean

Rgt_Filtervcf_V0_1_0 = CommandToolBuilder(tool="rgt_filterVCF", base_command=["rgt-filterVCF"], inputs=[ToolInput(tag="in_t_mq", input_type=Int(optional=True), prefix="--t-mq", doc=InputDocumentation(doc="Threshold for mapping quality (MQ) [default: 20]")), ToolInput(tag="in_t_dp", input_type=Int(optional=True), prefix="--t-dp", doc=InputDocumentation(doc="Threshold for combined depth (DP) [default: 20]")), ToolInput(tag="in_dbsnp", input_type=String(optional=True), prefix="--dbSNP", doc=InputDocumentation(doc="Check for dbSNP [default: none]")), ToolInput(tag="in_list_wt", input_type=String(optional=True), prefix="--list-WT", doc=InputDocumentation(doc="List of WildTypes [default: none]")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="Filter against BED file (e.g. TFBS) [default: none]")), ToolInput(tag="in_max_density", input_type=Boolean(optional=True), prefix="--max-density", doc=InputDocumentation(doc="Perform max. density search [default: False]")), ToolInput(tag="in_lower_bound", input_type=Int(optional=True), prefix="--lowerBound", doc=InputDocumentation(doc="lower window bound for max. density search [default:\n15000]")), ToolInput(tag="in_upper_bound", input_type=Int(optional=True), prefix="--upperBound", doc=InputDocumentation(doc="upper window bound for max. density search [default:\n30000]\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Filtervcf_V0_1_0().translate("wdl", allow_empty_container=True)

