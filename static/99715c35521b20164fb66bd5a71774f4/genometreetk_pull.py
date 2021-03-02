from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Genometreetk_Pull_V0_1_0 = CommandToolBuilder(tool="genometreetk_pull", base_command=["genometreetk", "pull"], inputs=[ToolInput(tag="in_no_validation", input_type=Boolean(optional=True), prefix="--no_validation", doc=InputDocumentation(doc="do not assume decorated nodes adhear to standard taxonomy")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress output")), ToolInput(tag="in_input_tree", input_type=String(), position=0, doc=InputDocumentation(doc="decorated tree")), ToolInput(tag="in_output_taxonomy", input_type=String(), position=1, doc=InputDocumentation(doc="output taxonomy file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genometreetk_Pull_V0_1_0().translate("wdl", allow_empty_container=True)

