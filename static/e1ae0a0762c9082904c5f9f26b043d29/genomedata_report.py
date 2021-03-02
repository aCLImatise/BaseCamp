from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Genomedata_Report_V0_1_0 = CommandToolBuilder(tool="genomedata_report", base_command=["genomedata-report"], inputs=[ToolInput(tag="in_gd_archive", input_type=String(), position=0, doc=InputDocumentation(doc="genomedata archive"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genomedata_Report_V0_1_0().translate("wdl", allow_empty_container=True)

