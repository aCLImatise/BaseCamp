from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Biscuit_Bsconv_V0_1_0 = CommandToolBuilder(tool="biscuit_bsconv", base_command=["biscuit", "bsconv"], inputs=[ToolInput(tag="in_region", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="region.")), ToolInput(tag="in_filter_unclear_bsstrand", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="filter unclear bs-strand (YD:u) reads [OFF].")), ToolInput(tag="in_filter_maximum_cph_retention", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="filter: maximum CpH retention [Inf]")), ToolInput(tag="in_filter_maximum_cph_retention_fraction", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="filter: maximum CpH retention fraction [1.0]")), ToolInput(tag="in_filter_maximum_cpa", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="filter: maximum CpA retention [Inf]")), ToolInput(tag="in_filter_maximum_cpc", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="filter: maximum CpC retention [Inf]")), ToolInput(tag="in_filter_maximum_cpt", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="filter: maximum CpT retention [Inf]")), ToolInput(tag="in_print_tab_cpac", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="print in tab, CpA_R, CpA_C, CpC_R, CpC_C, CpG_R, CpG_C, CpT_R, CpT_C")), ToolInput(tag="in_show_filtered_instead", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="show filtered instead of remained [False]")), ToolInput(tag="in_bs_conv", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_bam", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biscuit_Bsconv_V0_1_0().translate("wdl", allow_empty_container=True)

