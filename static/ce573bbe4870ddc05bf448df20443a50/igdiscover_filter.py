from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, File

Igdiscover_Filter_V0_1_0 = CommandToolBuilder(tool="igdiscover_filter", base_command=["igdiscover", "filter"], inputs=[ToolInput(tag="in_v_coverage", input_type=Int(optional=True), prefix="--v-coverage", doc=InputDocumentation(doc="Require that the sequence covers at least PERCENT of\nthe V gene. Default: 90")), ToolInput(tag="in_v_evalue", input_type=Float(optional=True), prefix="--v-evalue", doc=InputDocumentation(doc="Require that the E-value for the V gene match is at\nmost EVALUE. Default: 0.001")), ToolInput(tag="in_j_coverage", input_type=Int(optional=True), prefix="--j-coverage", doc=InputDocumentation(doc="Require that the sequence covers at least PERCENT of\nthe J gene. Default: 60")), ToolInput(tag="in_json", input_type=File(optional=True), prefix="--json", doc=InputDocumentation(doc="Write statistics to FILE"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igdiscover_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

