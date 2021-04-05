from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dadaist2_Mqc_Report_V0_1_0 = CommandToolBuilder(tool="dadaist2_mqc_report", base_command=["dadaist2-mqc-report"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/dadaist2:0.7.7--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dadaist2_Mqc_Report_V0_1_0().translate("wdl")

