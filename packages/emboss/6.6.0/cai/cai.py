from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Cai_V0_1_0 = CommandToolBuilder(tool="cai", base_command=["cai"], inputs=[ToolInput(tag="in_c_file", input_type=Boolean(optional=True), prefix="-cfile", doc=InputDocumentation(doc="codon      [Eyeast_cai.cut] Codon usage table name"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cai_V0_1_0().translate("wdl", allow_empty_container=True)

