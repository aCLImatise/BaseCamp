from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dx_Jobutil_Report_Error_V0_1_0 = CommandToolBuilder(tool="dx_jobutil_report_error", base_command=["dx-jobutil-report-error"], inputs=[ToolInput(tag="in_message", input_type=String(), position=0, doc=InputDocumentation(doc="Error message for the job"))], outputs=[], container="quay.io/biocontainers/dxpy:0.306.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Jobutil_Report_Error_V0_1_0().translate("wdl")

