from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Wb_Shortcuts_V0_1_0 = CommandToolBuilder(tool="wb_shortcuts", base_command=["wb_shortcuts"], inputs=[ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="display version info")), ToolInput(tag="in_list_functions", input_type=Boolean(optional=True), prefix="-list-functions", doc=InputDocumentation(doc="show available functions")), ToolInput(tag="in_all_functions_help", input_type=Boolean(optional=True), prefix="-all-functions-help", doc=InputDocumentation(doc="show all functions and their help info - VERY LONG")), ToolInput(tag="in_arguments_dot", input_type=String(), position=0, doc=InputDocumentation(doc="If the first argument is not recognized, all functions that start with the"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wb_Shortcuts_V0_1_0().translate("wdl", allow_empty_container=True)

