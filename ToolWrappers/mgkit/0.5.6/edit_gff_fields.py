from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Edit_Gff_Fields_V0_1_0 = CommandToolBuilder(tool="edit_gff_fields", base_command=["edit-gff", "fields"], inputs=[ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Number of annotations to parse, 0 will parse the\nwhole file  [default: 10]")), ToolInput(tag="in_gff_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_txt_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Edit_Gff_Fields_V0_1_0().translate("wdl")

