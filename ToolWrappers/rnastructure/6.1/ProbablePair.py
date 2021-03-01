from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Probablepair_V0_1_0 = CommandToolBuilder(tool="ProbablePair", base_command=["ProbablePair"], inputs=[ToolInput(tag="in_dna", input_type=Boolean(optional=True), prefix="--DNA", doc=InputDocumentation(doc="This flag only matters if the input file is a sequence file and has been\nspecified as such. Specify that the sequence is DNA, and DNA parameters are\nto be used.\nDefault is to use RNA parameters.")), ToolInput(tag="in_sequence", input_type=Boolean(optional=True), prefix="--sequence", doc=InputDocumentation(doc="Identify the input file format as a sequence file.")), ToolInput(tag="in_threshold", input_type=Boolean(optional=True), prefix="--threshold", doc=InputDocumentation(doc="The threshold at which pairs should be included in a structure. This should\nbe expressed as a number: 0.5 <= x <= 1.0.\nDefault is 0, which signifies that structures should be generated at\nmultiple thresholds: >= 0.99, >= 0.97, >= 0.95, >= 0.90, >= 0.80, >= 0.70,\n>= 0.60, and >= 0.50.\n")), ToolInput(tag="in_specified_dot", input_type=String(), position=0, doc=InputDocumentation(doc="<ct file>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Probablepair_V0_1_0().translate("wdl", allow_empty_container=True)

