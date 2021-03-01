from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Comb_P_Filter_V0_1_0 = CommandToolBuilder(tool="comb_p_filter", base_command=["comb-p", "filter"], inputs=[ToolInput(tag="in_pvalue_column_pbed", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="p-value column from `p_bed`")), ToolInput(tag="in_tstatistic_directionality_pbed", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="t-statistic or directionality from p_bed")), ToolInput(tag="in_coef", input_type=String(optional=True), prefix="--coef", doc=InputDocumentation(doc="name of coefficient column in BED")), ToolInput(tag="in_filter", input_type=Boolean(optional=True), prefix="--filter", doc=InputDocumentation(doc="don't print row if there's a swith in t-scores")), ToolInput(tag="in_max_p", input_type=Int(optional=True), prefix="--max-p", doc=InputDocumentation(doc="filter regions with any p-value > this value")), ToolInput(tag="in_region_p", input_type=String(optional=True), prefix="--region-p", doc=InputDocumentation(doc="filter regions with combined p-value > this value")), ToolInput(tag="in_region_bed", input_type=String(), position=0, doc=InputDocumentation(doc="file containing the regions")), ToolInput(tag="in_p_bed", input_type=String(), position=1, doc=InputDocumentation(doc="file containing the raw p-values"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Comb_P_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

