from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Mask_Quality_Py_V0_1_0 = CommandToolBuilder(tool="mask_quality.py", base_command=["mask_quality.py"], inputs=[ToolInput(tag="in_format_input_axt", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Format of input (axt or maf)")), ToolInput(tag="in_format_output_axt", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Format of output (axt or maf)")), ToolInput(tag="in_mask", input_type=String(optional=True), prefix="--mask", doc=InputDocumentation(doc="Character to use as mask character")), ToolInput(tag="in_quality", input_type=Int(optional=True), prefix="--quality", doc=InputDocumentation(doc="Min quality allowed")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="base_pair or nqs")), ToolInput(tag="in_list", input_type=String(optional=True), prefix="--list", doc=InputDocumentation(doc="colon seperated list of\nspecies,len_file[,qualityfile].\n")), ToolInput(tag="in_var_6", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_7", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mask_Quality_Py_V0_1_0().translate("wdl")

