from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Float

Circulargenerator_V0_1_0 = CommandToolBuilder(tool="circulargenerator", base_command=["circulargenerator"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="the input FastA File")), ToolInput(tag="in_seq", input_type=String(optional=True), prefix="--seq", doc=InputDocumentation(doc="the names of the sequences that should to\nbe elongated\n")), ToolInput(tag="in_circular_generator_v_one_dot_zero", input_type=Float(), position=0, doc=InputDocumentation(doc="-e,--elongation <ELONGATION>   the elongation factor [INT]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Circulargenerator_V0_1_0().translate("wdl", allow_empty_container=True)

