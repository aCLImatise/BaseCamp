from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Msaboot_V0_1_0 = CommandToolBuilder(tool="msaboot", base_command=["msaboot"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="The file name of the FASTA file to be used as input.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The file name of the bootstrapped alignment data\noutput, stored in relaxed PHYLIP format.")), ToolInput(tag="in_number", input_type=Int(optional=True), prefix="--number", doc=InputDocumentation(doc="The number of bootstrap replicates.\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The file name of the bootstrapped alignment data\noutput, stored in relaxed PHYLIP format."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msaboot_V0_1_0().translate("wdl", allow_empty_container=True)

