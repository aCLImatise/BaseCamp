from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Checkm_Profile_V0_1_0 = CommandToolBuilder(tool="checkm_profile", base_command=["checkm", "profile"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="print results to file (default: stdout)")), ToolInput(tag="in_tab_table", input_type=Boolean(optional=True), prefix="--tab_table", doc=InputDocumentation(doc="print tab-separated values table")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="suppress console output")), ToolInput(tag="in_coverage_file", input_type=String(), position=0, doc=InputDocumentation(doc="file indicating coverage of each sequence (see coverage command)"))], outputs=[], container="quay.io/biocontainers/checkm-genome:1.1.3--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkm_Profile_V0_1_0().translate("wdl")

