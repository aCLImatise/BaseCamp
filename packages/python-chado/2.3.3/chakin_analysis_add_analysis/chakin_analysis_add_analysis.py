from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Chakin_Analysis_Add_Analysis_V0_1_0 = CommandToolBuilder(tool="chakin_analysis_add_analysis", base_command=["chakin", "analysis", "add_analysis"], inputs=[ToolInput(tag="in_algorithm", input_type=String(optional=True), prefix="--algorithm", doc=InputDocumentation(doc="analysis algorithm")), ToolInput(tag="in_source_version", input_type=String(optional=True), prefix="--sourceversion", doc=InputDocumentation(doc="analysis sourceversion")), ToolInput(tag="in_source_uri", input_type=String(optional=True), prefix="--sourceuri", doc=InputDocumentation(doc="analysis sourceuri")), ToolInput(tag="in_description", input_type=String(optional=True), prefix="--description", doc=InputDocumentation(doc="analysis description")), ToolInput(tag="in_date_executed", input_type=String(optional=True), prefix="--date_executed", doc=InputDocumentation(doc="analysis date_executed (yyyy-mm-dd)")), ToolInput(tag="in_source_name", input_type=String(), position=0, doc=InputDocumentation(doc="Create an analysis"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chakin_Analysis_Add_Analysis_V0_1_0().translate("wdl", allow_empty_container=True)

