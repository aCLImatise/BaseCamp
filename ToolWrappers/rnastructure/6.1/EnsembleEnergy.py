from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Ensembleenergy_V0_1_0 = CommandToolBuilder(tool="EnsembleEnergy", base_command=["EnsembleEnergy"], inputs=[ToolInput(tag="in_dna", input_type=Boolean(optional=True), prefix="--DNA", doc=InputDocumentation(doc="This flag only matters if the input file is a sequence file and has been\nspecified as such. Specify that the sequence is DNA, and DNA parameters are\nto be used.\nDefault is to use RNA parameters.")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="Suppress all progress messages except the final ensemble energy result.\nNote that this does NOT suppress errors.")), ToolInput(tag="in_sequence", input_type=Boolean(optional=True), prefix="--sequence", doc=InputDocumentation(doc="Identify the input file format as a sequence file.")), ToolInput(tag="in_input_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ensembleenergy_V0_1_0().translate("wdl", allow_empty_container=True)

