from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Extract_Us_Genomes_Py_Gnuvid_Report_V0_1_0 = CommandToolBuilder(tool="Extract_US_genomes.py_GNUVID_report", base_command=["Extract_US_genomes.py", "GNUVID_report"], inputs=[ToolInput(tag="in_extract_us_genomes_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_states", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_gnu_vid_report", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gnuvid:2.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Us_Genomes_Py_Gnuvid_Report_V0_1_0().translate("wdl")

