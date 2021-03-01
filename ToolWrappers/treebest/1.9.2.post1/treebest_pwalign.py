from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Treebest_Pwalign_V0_1_0 = CommandToolBuilder(tool="treebest_pwalign", base_command=["treebest", "pwalign"], inputs=[ToolInput(tag="in_generate_full_alignment", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="generate full alignment")), ToolInput(tag="in_apply_matrix_mean", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="do not apply matrix mean in local alignment")), ToolInput(tag="in_just_calculate_boundaries", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="just calculate alignment boundaries")), ToolInput(tag="in_gap_open_penalty", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="gap open penalty")), ToolInput(tag="in_gap_extension_penalty", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="gap extension penalty")), ToolInput(tag="in_gap_end_penalty", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="gap end penalty for nt2nt or aa2aa")), ToolInput(tag="in_frameshift_penalty_aant", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="frame-shift penalty for aa2nt")), ToolInput(tag="in_good_splicing_penalty", input_type=Int(optional=True), prefix="-g", doc=InputDocumentation(doc="good splicing penalty")), ToolInput(tag="in_bandwidth", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="band-width")), ToolInput(tag="in_bad_splicing_penalty", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="bad splicing penalty")), ToolInput(tag="in_output_miscellaneous_information", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="output miscellaneous information"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Treebest_Pwalign_V0_1_0().translate("wdl", allow_empty_container=True)

