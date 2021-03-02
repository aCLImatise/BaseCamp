from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Panphlan_Download_Pangenome_Py_V0_1_0 = CommandToolBuilder(tool="panphlan_download_pangenome.py", base_command=["panphlan_download_pangenome.py"], inputs=[ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="output location")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Show progress information")), ToolInput(tag="in_retry", input_type=Int(optional=True), prefix="--retry", doc=InputDocumentation(doc="Number of retry in pangenome download. Default is 5")), ToolInput(tag="in_wait", input_type=Int(optional=True), prefix="--wait", doc=InputDocumentation(doc="Number of second spend waiting between download\nretries. Default 60")), ToolInput(tag="in_input_name", input_type=String(optional=True), prefix="--input_name", doc=InputDocumentation(doc="Name of species to download\n"))], outputs=[], container="quay.io/biocontainers/panphlan:3.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Panphlan_Download_Pangenome_Py_V0_1_0().translate("wdl")

