from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Mergesampledensitys_V0_1_0 = CommandToolBuilder(tool="MergeSampleDensitys", base_command=["MergeSampleDensitys"], inputs=[ToolInput(tag="in_input", input_type=Int(optional=True), prefix="--input", doc=InputDocumentation(doc="Density files in txt format separated by comma. e.g.\ntest1_dataframe.txt,test2_dataframe.txt")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output filename.[required]\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output filename.[required]\n"))], container="quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mergesampledensitys_V0_1_0().translate("wdl")

