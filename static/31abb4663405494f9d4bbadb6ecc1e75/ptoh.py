from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ptoh_V0_1_0 = CommandToolBuilder(tool="ptoh", base_command=["ptoh"], inputs=[ToolInput(tag="in_emulate_domain_", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": emulate domain- or semi-global alignment mode.")), ToolInput(tag="in_output_set_format", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": output in SAM format (if not set: HMMER1 format).")), ToolInput(tag="in_emulate_local_mode", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc=": emulate local alignment mode.")), ToolInput(tag="in_valuedeletetodelete_transition_probabilities", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="<value>:\ndelete-to-delete transition probabilities (default: 0.9).")), ToolInput(tag="in_valueinserttoinsert_transition_probabilities", input_type=Boolean(optional=True), prefix="-I", doc=InputDocumentation(doc="<value>:\ninsert-to-insert transition probabilities (default: 0.99).")), ToolInput(tag="in_valuelogarithmic_base_default", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="<value>:\nlogarithmic base (default: 1.0233739).")), ToolInput(tag="in_fhs_fdi_l", input_type=Boolean(optional=True), prefix="-fhsFDIL", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ptoh_V0_1_0().translate("wdl", allow_empty_container=True)

