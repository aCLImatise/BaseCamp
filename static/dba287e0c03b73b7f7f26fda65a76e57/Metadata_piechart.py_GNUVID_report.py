from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Metadata_Piechart_Py_Gnuvid_Report_V0_1_0 = CommandToolBuilder(tool="Metadata_piechart.py_GNUVID_report", base_command=["Metadata_piechart.py", "GNUVID_report"], inputs=[ToolInput(tag="in_l", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_metadata_pie_chart_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_st_cc", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_gnu_vid_report", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gnuvid:2.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metadata_Piechart_Py_Gnuvid_Report_V0_1_0().translate("wdl")

