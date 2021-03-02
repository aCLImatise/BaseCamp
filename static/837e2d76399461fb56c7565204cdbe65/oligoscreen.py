from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Oligoscreen_V0_1_0 = CommandToolBuilder(tool="oligoscreen", base_command=["oligoscreen"], inputs=[ToolInput(tag="in_dna", input_type=Boolean(optional=True), prefix="--DNA", doc=InputDocumentation(doc="This flag only matters if the input file is a sequence file and has been\nspecified as such. Specify that the sequence is DNA, and DNA parameters are\nto be used.\nDefault is to use RNA parameters.")), ToolInput(tag="in_temperature", input_type=Boolean(optional=True), prefix="--temperature", doc=InputDocumentation(doc="Specify the temperature at which calculation takes place in Kelvin.\nDefault is 310.15 K, which is 37 degrees C.\n")), ToolInput(tag="in_list_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_report_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oligoscreen_V0_1_0().translate("wdl", allow_empty_container=True)

