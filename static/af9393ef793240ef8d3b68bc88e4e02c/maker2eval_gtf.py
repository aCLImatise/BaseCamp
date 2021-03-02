from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Maker2Eval_Gtf_V0_1_0 = CommandToolBuilder(tool="maker2eval_gtf", base_command=["maker2eval_gtf"], inputs=[ToolInput(tag="in_this", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_evaluating", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_for", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_maker_two_eval", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_program_dot", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_script", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_converts", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_program", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_eval", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_maker", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_gff_three", input_type=Int(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_into", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_gtf", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_formated", input_type=String(), position=8, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maker2Eval_Gtf_V0_1_0().translate("wdl")

