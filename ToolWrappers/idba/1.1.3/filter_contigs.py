from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Filter_Contigs_V0_1_0 = CommandToolBuilder(tool="filter_contigs", base_command=["filter_contigs"], inputs=[ToolInput(tag="in_min_contig", input_type=Int(optional=True), prefix="--min_contig", doc=InputDocumentation(doc="(=100)            filter out reads containing 'N'")), ToolInput(tag="in_fq_two_fa", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tmp_dot_fq", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_tmp_dot_fa", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Contigs_V0_1_0().translate("wdl", allow_empty_container=True)

