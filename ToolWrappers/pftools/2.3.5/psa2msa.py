from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Psa2Msa_V0_1_0 = CommandToolBuilder(tool="psa2msa", base_command=["psa2msa"], inputs=[ToolInput(tag="in_replace_periods_dashes", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc=": replace periods by dashes on output.")), ToolInput(tag="in_replace_upper_case_letters", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc=": replace upper case letters by lower case.")), ToolInput(tag="in_replace_dashes_periods", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc=": replace dashes by periods on output.")), ToolInput(tag="in_replace_lower_case_letters", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc=": replace lower case letters by upper case.")), ToolInput(tag="in_valuemaximal_insertion_length", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="<value>:\nmaximal insertion length (default: -1).")), ToolInput(tag="in_valuespecifies_output_width", input_type=Boolean(optional=True), prefix="-W", doc=InputDocumentation(doc="<value>:\nspecifies the output width (default: 60).")), ToolInput(tag="in_dhl_pum_w", input_type=Boolean(optional=True), prefix="-dhlpuMW", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Psa2Msa_V0_1_0().translate("wdl", allow_empty_container=True)

