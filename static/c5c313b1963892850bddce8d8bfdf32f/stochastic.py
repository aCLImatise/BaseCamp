from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Stochastic_V0_1_0 = CommandToolBuilder(tool="stochastic", base_command=["stochastic"], inputs=[ToolInput(tag="in_dna", input_type=Boolean(optional=True), prefix="--DNA", doc=InputDocumentation(doc="This flag only matters if the input file is a sequence file and has been\nspecified as such. Specify that the sequence is DNA, and DNA parameters are\nto be used.\nDefault is to use RNA parameters.")), ToolInput(tag="in_sequence", input_type=Boolean(optional=True), prefix="--sequence", doc=InputDocumentation(doc="Identify the input file format as a sequence file.")), ToolInput(tag="in_ensemble", input_type=Boolean(optional=True), prefix="--ensemble", doc=InputDocumentation(doc="Specify the ensemble size.\nDefault is 1000 structures.")), ToolInput(tag="in_seed", input_type=Boolean(optional=True), prefix="--seed", doc=InputDocumentation(doc="Specify the random seed.\nDefault is 1234.\n")), ToolInput(tag="in_specified_dot", input_type=String(), position=0, doc=InputDocumentation(doc="<ct file>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stochastic_V0_1_0().translate("wdl", allow_empty_container=True)

