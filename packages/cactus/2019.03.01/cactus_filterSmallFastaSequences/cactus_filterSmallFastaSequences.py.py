from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Cactus_Filtersmallfastasequences_Py_V0_1_0 = CommandToolBuilder(tool="cactus_filterSmallFastaSequences.py", base_command=["cactus_filterSmallFastaSequences.py"], inputs=[ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="only filter sequences with prefix in name")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="filter shorter than length [default=1000]")), ToolInput(tag="in_fast_a_input_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_output_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_fast_a_output_file", output_type=File(), selector=InputSelector(input_to_select="in_fast_a_output_file", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactus_Filtersmallfastasequences_Py_V0_1_0().translate("wdl", allow_empty_container=True)

