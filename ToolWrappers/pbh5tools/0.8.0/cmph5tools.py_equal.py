from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float

Cmph5Tools_Py_Equal_V0_1_0 = CommandToolBuilder(tool="cmph5tools.py_equal", base_command=["cmph5tools.py", "equal"], inputs=[ToolInput(tag="in_cmp_doth_five_dot_one", input_type=Float(), position=0, doc=InputDocumentation(doc="filename 1")), ToolInput(tag="in_cmp_doth_five_dot_two", input_type=Float(), position=1, doc=InputDocumentation(doc="filename 2"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cmph5Tools_Py_Equal_V0_1_0().translate("wdl", allow_empty_container=True)

