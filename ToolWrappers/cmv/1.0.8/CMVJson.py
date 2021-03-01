from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Cmvjson_V0_1_0 = CommandToolBuilder(tool="CMVJson", base_command=["CMVJson"], inputs=[ToolInput(tag="in_input_model_file", input_type=File(optional=True), prefix="--inputmodelfile", doc=InputDocumentation(doc="Path to input")), ToolInput(tag="in_output_directory_path", input_type=File(optional=True), prefix="--outputdirectorypath", doc=InputDocumentation(doc="Path to output directory")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Loud verbosity")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Quiet verbosity"))], outputs=[ToolOutput(tag="out_output_directory_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_directory_path", type_hint=File()), doc=OutputDocumentation(doc="Path to output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cmvjson_V0_1_0().translate("wdl", allow_empty_container=True)

