from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Phyluce_Utilities_Merge_Multiple_Gzip_Files_V0_1_0 = CommandToolBuilder(tool="phyluce_utilities_merge_multiple_gzip_files", base_command=["phyluce_utilities_merge_multiple_gzip_files"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="The path to the config file to use for merging.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The path to a directory in which to store the output.")), ToolInput(tag="in_section", input_type=String(optional=True), prefix="--section", doc=InputDocumentation(doc="The section holding the merge info.")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use.")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs.")), ToolInput(tag="in_trimmed", input_type=Boolean(optional=True), prefix="--trimmed", doc=InputDocumentation(doc="If the reads have already been trimmed."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The path to a directory in which to store the output."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Utilities_Merge_Multiple_Gzip_Files_V0_1_0().translate("wdl", allow_empty_container=True)

