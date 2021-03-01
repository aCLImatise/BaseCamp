from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Maf_Thread_For_Species_Py_V0_1_0 = CommandToolBuilder(tool="maf_thread_for_species.py", base_command=["maf_thread_for_species.py"], inputs=[ToolInput(tag="in_no_fuse", input_type=Boolean(optional=True), prefix="--nofuse", doc=InputDocumentation(doc="Don't attempt to join blocks, just remove rows.")), ToolInput(tag="in_species_two", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Thread_For_Species_Py_V0_1_0().translate("wdl", allow_empty_container=True)

