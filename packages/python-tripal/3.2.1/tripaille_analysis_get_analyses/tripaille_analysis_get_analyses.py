from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tripaille_Analysis_Get_Analyses_V0_1_0 = CommandToolBuilder(tool="tripaille_analysis_get_analyses", base_command=["tripaille", "analysis", "get_analyses"], inputs=[ToolInput(tag="in_analysis_id", input_type=String(optional=True), prefix="--analysis_id", doc=InputDocumentation(doc="An analysis ID")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="analysis name")), ToolInput(tag="in_program", input_type=String(optional=True), prefix="--program", doc=InputDocumentation(doc="analysis program")), ToolInput(tag="in_program_version", input_type=String(optional=True), prefix="--programversion", doc=InputDocumentation(doc="analysis programversion")), ToolInput(tag="in_algorithm", input_type=String(optional=True), prefix="--algorithm", doc=InputDocumentation(doc="analysis algorithm")), ToolInput(tag="in_source_name", input_type=String(optional=True), prefix="--sourcename", doc=InputDocumentation(doc="analysis sourcename")), ToolInput(tag="in_source_version", input_type=String(optional=True), prefix="--sourceversion", doc=InputDocumentation(doc="analysis sourceversion")), ToolInput(tag="in_source_uri", input_type=String(optional=True), prefix="--sourceuri", doc=InputDocumentation(doc="analysis sourceuri")), ToolInput(tag="in_date_executed", input_type=String(optional=True), prefix="--date_executed", doc=InputDocumentation(doc="analysis date_executed (yyyy-mm-dd)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Analysis_Get_Analyses_V0_1_0().translate("wdl", allow_empty_container=True)

