from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Align_It_V0_1_0 = CommandToolBuilder(tool="align_it", base_command=["align-it"], inputs=[ToolInput(tag="in_reference", input_type=Boolean(optional=True), prefix="--reference", doc=InputDocumentation(doc="<file>")), ToolInput(tag="in_reftype", input_type=Boolean(optional=True), prefix="--refType", doc=InputDocumentation(doc="<type>")), ToolInput(tag="in_dbase", input_type=Boolean(optional=True), prefix="--dbase", doc=InputDocumentation(doc="<file>")), ToolInput(tag="in_dbtype", input_type=Boolean(optional=True), prefix="--dbType", doc=InputDocumentation(doc="<type>")), ToolInput(tag="in_pharmacophore", input_type=Boolean(optional=True), prefix="--pharmacophore", doc=InputDocumentation(doc="<file>")), ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="--out", doc=InputDocumentation(doc="<file>")), ToolInput(tag="in_out_type", input_type=Boolean(optional=True), prefix="--outType", doc=InputDocumentation(doc="<type>")), ToolInput(tag="in_scores", input_type=Boolean(optional=True), prefix="--scores", doc=InputDocumentation(doc="<file>")), ToolInput(tag="in_cut_off", input_type=Boolean(optional=True), prefix="--cutOff", doc=InputDocumentation(doc="<double>")), ToolInput(tag="in_best", input_type=Boolean(optional=True), prefix="--best", doc=InputDocumentation(doc="<int>")), ToolInput(tag="in_epsilon", input_type=Boolean(optional=True), prefix="--epsilon", doc=InputDocumentation(doc="<double>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Align_It_V0_1_0().translate("wdl", allow_empty_container=True)

