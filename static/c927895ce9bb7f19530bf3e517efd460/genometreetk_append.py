from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Genometreetk_Append_V0_1_0 = CommandToolBuilder(tool="genometreetk_append", base_command=["genometreetk", "append"], inputs=[ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress output")), ToolInput(tag="in_input_tree", input_type=String(), position=0, doc=InputDocumentation(doc="input tree to decorate")), ToolInput(tag="in_input_taxonomy", input_type=String(), position=1, doc=InputDocumentation(doc="input taxonomy file")), ToolInput(tag="in_output_tree", input_type=String(), position=2, doc=InputDocumentation(doc="output tree with taxonomy appended to extant taxon labels"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genometreetk_Append_V0_1_0().translate("wdl", allow_empty_container=True)

