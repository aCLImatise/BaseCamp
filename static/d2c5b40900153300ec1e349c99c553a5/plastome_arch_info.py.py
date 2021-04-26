from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Plastome_Arch_Info_Py_V0_1_0 = CommandToolBuilder(tool="plastome_arch_info.py", base_command=["plastome_arch_info.py"], inputs=[ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file.")), ToolInput(tag="in_minimum_repeat_length", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="The minimum repeat length treated as the IR region of\nplastome. Default: [5000]")), ToolInput(tag="in_valid_bases_atgcrmykhbdvatgcrmykhbdv", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="Valid bases. Default: ATGCRMYKHBDVatgcrmykhbdv")), ToolInput(tag="in_sequences", input_type=String(), position=0, doc=InputDocumentation(doc="Input fasta format sequences (split the files by spaces)."))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="output file."))], container="quay.io/biocontainers/getorganelle:1.7.4.1--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plastome_Arch_Info_Py_V0_1_0().translate("wdl")

