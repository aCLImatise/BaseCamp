from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Coolbox_Gen_Notebook_V0_1_0 = CommandToolBuilder(tool="coolbox_gen_notebook", base_command=["coolbox", "gen_notebook"], inputs=[ToolInput(tag="in_notes", input_type=Boolean(optional=True), prefix="--notes", doc=InputDocumentation(doc="=[4mNOTES[0m\nDefault: True\nGenerate markdown notes in notebook or not.")), ToolInput(tag="in_fig_save", input_type=Boolean(optional=True), prefix="--figsave", doc=InputDocumentation(doc="=[4mFIGSAVE[0m\nDefault: True\nGenerate codes for saving figure or not."))], outputs=[], container="quay.io/biocontainers/coolbox:0.3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coolbox_Gen_Notebook_V0_1_0().translate("wdl")

