from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Nextflow_Info_V0_1_0 = CommandToolBuilder(tool="nextflow_info", base_command=["nextflow", "info"], inputs=[ToolInput(tag="in_check_updates", input_type=Boolean(optional=True), prefix="-check-updates", doc=InputDocumentation(doc="Check for remote updates\nDefault: false")), ToolInput(tag="in_show_detailed_informationdefault", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Show detailed information\nDefault: false")), ToolInput(tag="in_output_format_yaml", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Output format, either: text (default), json, yaml\n")), ToolInput(tag="in_info", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_project", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_name", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nextflow_Info_V0_1_0().translate("wdl", allow_empty_container=True)

