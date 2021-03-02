from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Print_Picrust_Config_Py_V0_1_0 = CommandToolBuilder(tool="print_picrust_config.py", base_command=["print_picrust_config.py"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print information during execution -- useful for debugging\n[default: False]\n")), ToolInput(tag="in_print_pic_rust_config_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Print_Picrust_Config_Py_V0_1_0().translate("wdl", allow_empty_container=True)

