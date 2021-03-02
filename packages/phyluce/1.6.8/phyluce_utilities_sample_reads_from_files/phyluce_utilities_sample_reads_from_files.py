from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Phyluce_Utilities_Sample_Reads_From_Files_V0_1_0 = CommandToolBuilder(tool="phyluce_utilities_sample_reads_from_files", base_command=["phyluce_utilities_sample_reads_from_files"], inputs=[ToolInput(tag="in_conf", input_type=File(optional=True), prefix="--conf", doc=InputDocumentation(doc="The path to the config file giving reads to sample")), ToolInput(tag="in_path_output_directory", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The path to output directory")), ToolInput(tag="in_optional_arguments", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[ToolOutput(tag="out_path_output_directory", output_type=File(optional=True), selector=InputSelector(input_to_select="in_path_output_directory", type_hint=File()), doc=OutputDocumentation(doc="The path to output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Utilities_Sample_Reads_From_Files_V0_1_0().translate("wdl", allow_empty_container=True)

