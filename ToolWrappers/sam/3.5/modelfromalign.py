from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Modelfromalign_V0_1_0 = CommandToolBuilder(tool="modelfromalign", base_command=["modelfromalign"], inputs=[ToolInput(tag="in_align_file", input_type=File(optional=True), prefix="-alignfile", doc=InputDocumentation(doc=": Aligned sequences to read. Required.")), ToolInput(tag="in_prior_library", input_type=File(optional=True), prefix="-priorlibrary", doc=InputDocumentation(doc=": Dirichlet mixture to use.")), ToolInput(tag="in_alignment_weights", input_type=File(optional=True), prefix="-alignment_weights", doc=InputDocumentation(doc=": Sequence weight file.")), ToolInput(tag="in_option", input_type=String(optional=True), prefix="-option", doc=InputDocumentation(doc="")), ToolInput(tag="in_run_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Modelfromalign_V0_1_0().translate("wdl", allow_empty_container=True)

