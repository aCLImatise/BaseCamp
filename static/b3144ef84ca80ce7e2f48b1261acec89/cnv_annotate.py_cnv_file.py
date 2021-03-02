from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cnv_Annotate_Py_Cnv_File_V0_1_0 = CommandToolBuilder(tool="cnv_annotate.py_cnv_file", base_command=["cnv_annotate.py", "cnv_file"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_cnv_annotated_otp_y", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_annotate", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_cnv_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cnvkit:0.9.8--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnv_Annotate_Py_Cnv_File_V0_1_0().translate("wdl")

