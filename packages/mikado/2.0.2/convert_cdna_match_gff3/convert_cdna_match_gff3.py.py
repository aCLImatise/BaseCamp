from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Convert_Cdna_Match_Gff3_Py_V0_1_0 = CommandToolBuilder(tool="convert_cdna_match_gff3.py", base_command=["convert_cdna_match_gff3.py"], inputs=[ToolInput(tag="in_script", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_convert", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_cdna_match", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_gff_three", input_type=Int(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_from", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_exonerate", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_into", input_type=String(), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_either", input_type=String(), position=9, doc=InputDocumentation(doc="")), ToolInput(tag="in_match", input_type=String(), position=11, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mikado:2.0.2--py37hfa133b6_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert_Cdna_Match_Gff3_Py_V0_1_0().translate("wdl")

