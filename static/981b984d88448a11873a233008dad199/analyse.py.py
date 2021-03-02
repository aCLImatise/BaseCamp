from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Analyse_Py_V0_1_0 = CommandToolBuilder(tool="analyse.py", base_command=["analyse.py"], inputs=[ToolInput(tag="in_size", input_type=Int(optional=True), prefix="--size", doc=InputDocumentation(doc="length of the sequence (mandatory for circular\nsequences)")), ToolInput(tag="in_linear", input_type=Boolean(optional=True), prefix="--linear", doc=InputDocumentation(doc="treat sequence as linear")), ToolInput(tag="in_a_type", input_type=String(optional=True), prefix="--atype", doc=InputDocumentation(doc="get all features of type TYPE")), ToolInput(tag="in_f_type", input_type=String(optional=True), prefix="--ftype", doc=InputDocumentation(doc="get all features except features of type TYPE")), ToolInput(tag="in_a_name", input_type=String(optional=True), prefix="--aname", doc=InputDocumentation(doc="get all features with name NAME")), ToolInput(tag="in_fname", input_type=String(optional=True), prefix="--fname", doc=InputDocumentation(doc="get all features except features with name NAME\n")), ToolInput(tag="in_annotation", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reference", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Analyse_Py_V0_1_0().translate("wdl", allow_empty_container=True)

