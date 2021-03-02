from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Nlstradamus_V0_1_0 = CommandToolBuilder(tool="NLStradamus", base_command=["NLStradamus"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="file")), ToolInput(tag="in_posterior_threshold_default", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="[optional] Posterior Threshold (0...1) default 0.6")), ToolInput(tag="in_model_two_state", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[optional] Model (1 for two state, 2 for four state) default 1")), ToolInput(tag="in_algorithm_viterbi_posterior", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="[optional] Algorithm (0 for viterbi, 1 for posterior with threshold, 2 for both) default 1")), ToolInput(tag="in_tab", input_type=Boolean(optional=True), prefix="-tab", doc=InputDocumentation(doc="[optional] flag for tab delimited output. default is off"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nlstradamus_V0_1_0().translate("wdl", allow_empty_container=True)

