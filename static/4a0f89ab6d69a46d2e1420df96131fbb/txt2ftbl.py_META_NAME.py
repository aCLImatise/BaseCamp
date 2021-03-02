from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Txt2Ftbl_Py_Meta_Name_V0_1_0 = CommandToolBuilder(tool="txt2ftbl.py_META_NAME", base_command=["txt2ftbl.py", "META_NAME"], inputs=[ToolInput(tag="in_txttwoftbldotpy", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/influx_si:5.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Txt2Ftbl_Py_Meta_Name_V0_1_0().translate("wdl")

