from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Maketree_V0_1_0 = CommandToolBuilder(tool="makeTree", base_command=["makeTree"], inputs=[ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Fasta input file. Mandatory option.")), ToolInput(tag="in_depth", input_type=String(optional=True), prefix="--depth", doc=InputDocumentation(doc="of the tree structure. Mandatory option.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="file. If the extension is not *gz, it is added. Mandatory option."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maketree_V0_1_0().translate("wdl", allow_empty_container=True)

