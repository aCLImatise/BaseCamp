from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Albatradis_Artemis_Project_V0_1_0 = CommandToolBuilder(tool="albatradis_artemis_project", base_command=["albatradis-artemis_project"], inputs=[ToolInput(tag="in_control", input_type=String(optional=True), prefix="--control", doc=InputDocumentation(doc="control files (can use multiple times) (default: None)")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--outputfile", doc=InputDocumentation(doc="Output filename (default: project.properties)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print out more information while it runs (default:\nFalse)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Turn on debugging (default: False)")), ToolInput(tag="in_reference", input_type=String(), position=0, doc=InputDocumentation(doc="reference EMBL file")), ToolInput(tag="in_experiments_metadata", input_type=String(), position=1, doc=InputDocumentation(doc="experiments metadata spreadsheet"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output filename (default: project.properties)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Albatradis_Artemis_Project_V0_1_0().translate("wdl", allow_empty_container=True)

