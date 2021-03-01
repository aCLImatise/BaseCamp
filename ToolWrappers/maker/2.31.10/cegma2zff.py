from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Cegma2Zff_V0_1_0 = CommandToolBuilder(tool="cegma2zff", base_command=["cegma2zff"], inputs=[ToolInput(tag="in_this", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ce_gma_gff", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_for", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_script", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_use", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_converts", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_in", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_snap", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_9", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_training_dot", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_gff", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_12", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_are", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_from", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_ce_gma", input_type=String(), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_always", input_type=String(), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome_dot_ann", input_type=String(), position=9, doc=InputDocumentation(doc="")), ToolInput(tag="in_into", input_type=String(), position=9, doc=InputDocumentation(doc="")), ToolInput(tag="in_z_ff", input_type=String(), position=10, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cegma2Zff_V0_1_0().translate("wdl", allow_empty_container=True)

