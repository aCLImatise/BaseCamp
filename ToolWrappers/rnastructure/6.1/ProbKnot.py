from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Probknot_V0_1_0 = CommandToolBuilder(tool="ProbKnot", base_command=["ProbKnot"], inputs=[ToolInput(tag="in_dna", input_type=Boolean(optional=True), prefix="--DNA", doc=InputDocumentation(doc="This flag only matters if the input file is a sequence file or an ensemble\nstructure file and has been specified as such. Specify that the sequence is\nDNA, and DNA parameters are to be used.\nDefault is to use RNA parameters.")), ToolInput(tag="in_ensemble", input_type=Boolean(optional=True), prefix="--ensemble", doc=InputDocumentation(doc="Identify the input file format as an ensemble ctructure file. NOTE: all\nstructures in the file must have the same sequence.")), ToolInput(tag="in_sequence", input_type=Boolean(optional=True), prefix="--sequence", doc=InputDocumentation(doc="Identify the input file format as a sequence file.")), ToolInput(tag="in_iterations", input_type=Boolean(optional=True), prefix="--iterations", doc=InputDocumentation(doc="Specify the number of iterations the calculation will undergo.\nDefault is 1 iteration.")), ToolInput(tag="in_minimum", input_type=Boolean(optional=True), prefix="--minimum", doc=InputDocumentation(doc="Specify the minimum length accepted for a helix.\nDefault is 3 base pairs.\n")), ToolInput(tag="in_specified_dot", input_type=String(), position=0, doc=InputDocumentation(doc="<ct file>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Probknot_V0_1_0().translate("wdl", allow_empty_container=True)

