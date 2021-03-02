from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Pfw_V0_1_0 = CommandToolBuilder(tool="pfw", base_command=["pfw"], inputs=[ToolInput(tag="in_input_sequences_msa", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": input sequences in MSA format.")), ToolInput(tag="in_valuenumber_shuffles_sequence", input_type=Boolean(optional=True), prefix="-N", doc=InputDocumentation(doc="<value>:\nnumber of shuffles per sequence (default: 100).")), ToolInput(tag="in_valuegap_excision_threshold", input_type=Boolean(optional=True), prefix="-X", doc=InputDocumentation(doc="<value>:\ngap excision threshold (default: 0.5).")), ToolInput(tag="in_valuerandom_number_seed", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="<value>:\nrandom number seed, negative integer (default: -123456789).")), ToolInput(tag="in_valuetotal_weight_default", input_type=Boolean(optional=True), prefix="-W", doc=InputDocumentation(doc="<value>:\ntotal weight (default: 1).")), ToolInput(tag="in_hmn_x_rw", input_type=Boolean(optional=True), prefix="-hmNXRW", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pfw_V0_1_0().translate("wdl", allow_empty_container=True)

