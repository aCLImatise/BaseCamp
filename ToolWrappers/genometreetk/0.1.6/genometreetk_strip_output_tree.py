from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Genometreetk_Strip_Output_Tree_V0_1_0 = CommandToolBuilder(tool="genometreetk_strip_output_tree", base_command=["genometreetk", "strip", "output_tree"], inputs=[ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="")), ToolInput(tag="in_genome_tree_tk", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_strip", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_tree", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_tree", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genometreetk_Strip_Output_Tree_V0_1_0().translate("wdl", allow_empty_container=True)

