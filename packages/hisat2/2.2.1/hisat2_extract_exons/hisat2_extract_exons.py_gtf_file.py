from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Hisat2_Extract_Exons_Py_Gtf_File_V0_1_0 = CommandToolBuilder(tool="hisat2_extract_exons.py_gtf_file", base_command=["hisat2_extract_exons.py", "gtf_file"], inputs=[ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/hisat2:2.2.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hisat2_Extract_Exons_Py_Gtf_File_V0_1_0().translate("wdl")

