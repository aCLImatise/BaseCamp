from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Lukasa_Py_V0_1_0 = CommandToolBuilder(tool="lukasa.py", base_command=["lukasa.py"], inputs=[ToolInput(tag="in_output_filename", input_type=File(optional=True), prefix="--output_filename", doc=InputDocumentation(doc="spaln species table to use\n")), ToolInput(tag="in_contigs_filename", input_type=String(), position=0, doc=InputDocumentation(doc="File with genomic contigs")), ToolInput(tag="in_proteins_filename", input_type=String(), position=1, doc=InputDocumentation(doc="File with proteins to map"))], outputs=[ToolOutput(tag="out_output_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename", type_hint=File()), doc=OutputDocumentation(doc="spaln species table to use\n"))], container="quay.io/biocontainers/lukasa:0.0.7--py38_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lukasa_Py_V0_1_0().translate("wdl")

