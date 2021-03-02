from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Amr_Report_V0_1_0 = CommandToolBuilder(tool="amr_report", base_command=["amr_report"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="-seed", doc=InputDocumentation(doc="")), ToolInput(tag="in_profile", input_type=Boolean(optional=True), prefix="-profile", doc=InputDocumentation(doc="")), ToolInput(tag="in_no_progress", input_type=Boolean(optional=True), prefix="-noprogress", doc=InputDocumentation(doc="")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="-verbose", doc=InputDocumentation(doc="")), ToolInput(tag="in_qc", input_type=Boolean(optional=True), prefix="-qc", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amr_Report_V0_1_0().translate("wdl", allow_empty_container=True)

