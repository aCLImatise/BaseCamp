from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Encguess_V0_1_0 = CommandToolBuilder(tool="encguess", base_command=["encguess"], inputs=[ToolInput(tag="in_specify_list_test", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="specify a list of 'suspect encoding types' to test, seperated by\neither ':' or ','")), ToolInput(tag="in_output_list_param", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="output a list of all acceptable encoding types that can be used with\nthe -s param")), ToolInput(tag="in_suppress_display_unidentified", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="suppress display of unidentified types")), ToolInput(tag="in_examples", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_4", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_5", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Encguess_V0_1_0().translate("wdl", allow_empty_container=True)

