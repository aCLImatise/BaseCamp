from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Qacagplift_V0_1_0 = CommandToolBuilder(tool="qacAgpLift", base_command=["qacAgpLift"], inputs=[ToolInput(tag="in_m_score", input_type=Int(optional=True), prefix="-mScore", doc=InputDocumentation(doc="- score to use for missing data (otherwise fail)\nrange: 0-99, recommended values are 98 (low qual) or 99 (high)\n")), ToolInput(tag="in_scaffold_to_chrom_dot_agp", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_scaffolds_dot_qac", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qacagplift_V0_1_0().translate("wdl", allow_empty_container=True)

