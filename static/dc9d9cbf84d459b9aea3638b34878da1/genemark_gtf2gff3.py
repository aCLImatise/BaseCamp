from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Genemark_Gtf2Gff3_V0_1_0 = CommandToolBuilder(tool="genemark_gtf2gff3", base_command=["genemark_gtf2gff3"], inputs=[ToolInput(tag="in_var_0", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_this", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_redirect", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_converts", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_script", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_genemark", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_into", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_prints", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_stdout_dot", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_use", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_13", input_type=String(), position=6, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genemark_Gtf2Gff3_V0_1_0().translate("wdl", allow_empty_container=True)

