from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gtop_V0_1_0 = CommandToolBuilder(tool="gtop", base_command=["gtop"], inputs=[ToolInput(tag="in_apply_weighting_mode", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": apply asymmetric gap weighting mode.")), ToolInput(tag="in_apply_weighting_default", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": apply symmetric gap weighting mode (default).")), ToolInput(tag="in_impose_limit_line", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc=": do not impose limit on line length.")), ToolInput(tag="in_valuegap_opening_penalty", input_type=Boolean(optional=True), prefix="-G", doc=InputDocumentation(doc="<value>:\ngap opening penalty (default: 4.5).")), ToolInput(tag="in_valuegap_extension_penalty", input_type=Boolean(optional=True), prefix="-E", doc=InputDocumentation(doc="<value>:\ngap extension penalty (default: 0.05).")), ToolInput(tag="in_valuerescaling_factor_default", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="<value>:\nrescaling factor (default: 100).")), ToolInput(tag="in_valueoutput_offset_default", input_type=Boolean(optional=True), prefix="-O", doc=InputDocumentation(doc="<value>:\noutput score offset (default: 0).\nAdded to match scores after multiplication by the rescaling factor F.")), ToolInput(tag="in_as_lhg_efo", input_type=Boolean(optional=True), prefix="-aslhGEFO", doc=InputDocumentation(doc="")), ToolInput(tag="in_gcg_profile", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gtop_V0_1_0().translate("wdl", allow_empty_container=True)

