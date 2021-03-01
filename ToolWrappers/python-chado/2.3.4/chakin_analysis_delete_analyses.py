from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Chakin_Analysis_Delete_Analyses_V0_1_0 = CommandToolBuilder(tool="chakin_analysis_delete_analyses", base_command=["chakin", "analysis", "delete_analyses"], inputs=[ToolInput(tag="in_analysis_id", input_type=Int(optional=True), prefix="--analysis_id", doc=InputDocumentation(doc="analysis_id filter")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="analysis name filter")), ToolInput(tag="in_program", input_type=String(optional=True), prefix="--program", doc=InputDocumentation(doc="analysis program filter")), ToolInput(tag="in_program_version", input_type=String(optional=True), prefix="--programversion", doc=InputDocumentation(doc="analysis programversion filter")), ToolInput(tag="in_algorithm", input_type=String(optional=True), prefix="--algorithm", doc=InputDocumentation(doc="analysis algorithm filter")), ToolInput(tag="in_source_name", input_type=String(optional=True), prefix="--sourcename", doc=InputDocumentation(doc="analysis sourcename filter")), ToolInput(tag="in_source_version", input_type=String(optional=True), prefix="--sourceversion", doc=InputDocumentation(doc="analysis sourceversion filter")), ToolInput(tag="in_source_uri", input_type=String(optional=True), prefix="--sourceuri", doc=InputDocumentation(doc="analysis sourceuri filter")), ToolInput(tag="in_description", input_type=String(optional=True), prefix="--description", doc=InputDocumentation(doc="analysis description")), ToolInput(tag="in_none", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container="quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chakin_Analysis_Delete_Analyses_V0_1_0().translate("wdl")

