from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Finaltrim_V0_1_0 = CommandToolBuilder(tool="finalTrim", base_command=["finalTrim"], inputs=[ToolInput(tag="in_allow_percent_error", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="allow 'erate' percent error")), ToolInput(tag="in_allow", input_type=String(optional=True), prefix="-E", doc=InputDocumentation(doc="allow 'elimit' errors (only used in 'largestCovered')")), ToolInput(tag="in_ol", input_type=Boolean(optional=True), prefix="-ol", doc=InputDocumentation(doc="for 'largest covered', the minimum evidence overlap length")), ToolInput(tag="in_oc", input_type=Boolean(optional=True), prefix="-oc", doc=InputDocumentation(doc="for 'largest covered', the minimum evidence overlap coverage")), ToolInput(tag="in_modify_reads_gkpstore", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="do not modify reads in gkpStore")), ToolInput(tag="in_limit_processing_end", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="limit processing to only reads from bgn to end (inclusive)")), ToolInput(tag="in_var_6", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_7", input_type=String(optional=True), prefix="-O", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-G", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Finaltrim_V0_1_0().translate("wdl", allow_empty_container=True)

