from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Dv_Postprocess_Variants_Py_V0_1_0 = CommandToolBuilder(tool="dv_postprocess_variants.py", base_command=["dv_postprocess_variants.py"], inputs=[ToolInput(tag="in_outfile", input_type=String(optional=True), prefix="--outfile", doc=InputDocumentation(doc="")), ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--infile", doc=InputDocumentation(doc="")), ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dv_Postprocess_Variants_Py_V0_1_0().translate("wdl", allow_empty_container=True)

