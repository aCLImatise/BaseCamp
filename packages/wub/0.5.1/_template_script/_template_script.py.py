from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

_Template_Script_Py_V0_1_0 = CommandToolBuilder(tool="_template_script.py", base_command=["_template_script.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="Input."))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Template_Script_Py_V0_1_0().translate("wdl")

