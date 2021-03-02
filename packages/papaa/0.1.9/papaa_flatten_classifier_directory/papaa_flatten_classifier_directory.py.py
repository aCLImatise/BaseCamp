from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory

Papaa_Flatten_Classifier_Directory_Py_V0_1_0 = CommandToolBuilder(tool="papaa_flatten_classifier_directory.py", base_command=["papaa_flatten_classifier_directory.py"], inputs=[ToolInput(tag="in_input_directory", input_type=Directory(optional=True), prefix="--input-directory", doc=InputDocumentation(doc="Input Classifier directory")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--output-directory", doc=InputDocumentation(doc="Directory to put flattened collection\n"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Directory to put flattened collection\n"))], container="quay.io/biocontainers/papaa:0.1.9--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Papaa_Flatten_Classifier_Directory_Py_V0_1_0().translate("wdl")

