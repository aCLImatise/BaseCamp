from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Generate_Report_Py_V0_1_0 = CommandToolBuilder(tool="generate_report.py", base_command=["generate_report.py"], inputs=[ToolInput(tag="in_name_report_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="name of the report file (default: [prefix]_report.html)")), ToolInput(tag="in_diploid", input_type=Boolean(optional=True), prefix="--diploid", doc=InputDocumentation(doc="use the diploid model")), ToolInput(tag="in_generate_report", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/kmergenie:1.7051--py38r40h197edbe_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generate_Report_Py_V0_1_0().translate("wdl")

