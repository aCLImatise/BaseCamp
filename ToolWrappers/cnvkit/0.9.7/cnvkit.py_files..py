from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cnvkit_Py_Files__V0_1_0 = CommandToolBuilder(tool="cnvkit.py_files.", base_command=["cnvkit.py", "files."], inputs=[ToolInput(tag="in_cnv_kit_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnvkit_Py_Files__V0_1_0().translate("wdl", allow_empty_container=True)

