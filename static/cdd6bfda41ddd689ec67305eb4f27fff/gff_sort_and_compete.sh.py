from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Gff_Sort_And_Compete_Sh_V0_1_0 = CommandToolBuilder(tool="gff_sort_and_compete.sh", base_command=["gff_sort_and_compete.sh"], inputs=[ToolInput(tag="in_cat", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mirmachine:0.1.31--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gff_Sort_And_Compete_Sh_V0_1_0().translate("wdl")

