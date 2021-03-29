from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Maf_Region_Coverage_By_Src_Py_V0_1_0 = CommandToolBuilder(tool="maf_region_coverage_by_src.py", base_command=["maf_region_coverage_by_src.py"], inputs=[ToolInput(tag="in_src", input_type=String(optional=True), prefix="--src", doc=InputDocumentation(doc="Use this src for all intervals")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prepend this to each src before lookup\n")), ToolInput(tag="in_maf_files", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Region_Coverage_By_Src_Py_V0_1_0().translate("wdl")

