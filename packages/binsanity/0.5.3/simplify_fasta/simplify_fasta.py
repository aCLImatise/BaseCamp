from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Simplify_Fasta_V0_1_0 = CommandToolBuilder(tool="simplify_fasta", base_command=["simplify-fasta"], inputs=[ToolInput(tag="in_specify_name_input", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Specify the name of the input file")), ToolInput(tag="in_specify_name_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Specify the name for the output file"))], outputs=[ToolOutput(tag="out_specify_name_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_specify_name_output", type_hint=File()), doc=OutputDocumentation(doc="Specify the name for the output file"))], container="quay.io/biocontainers/binsanity:0.5.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simplify_Fasta_V0_1_0().translate("wdl")

