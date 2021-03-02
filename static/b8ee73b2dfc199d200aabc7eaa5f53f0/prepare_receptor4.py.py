from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Prepare_Receptor4_Py_V0_1_0 = CommandToolBuilder(tool="prepare_receptor4.py", base_command=["prepare_receptor4.py"], inputs=[ToolInput(tag="in_receptorfilename", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="receptor_filename"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prepare_Receptor4_Py_V0_1_0().translate("wdl", allow_empty_container=True)

