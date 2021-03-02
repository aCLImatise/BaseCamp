from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Reports_Py_Consolidate_Fastqc_V0_1_0 = CommandToolBuilder(tool="reports.py_consolidate_fastqc", base_command=["reports.py", "consolidate_fastqc"], inputs=[ToolInput(tag="in_reports_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_subcommand", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_consolidate_fast_qc", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reports_Py_Consolidate_Fastqc_V0_1_0().translate("wdl", allow_empty_container=True)

