from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Out_To_Chain_Py_V0_1_0 = CommandToolBuilder(tool="out_to_chain.py", base_command=["out_to_chain.py"], inputs=[ToolInput(tag="in_speciesnames_respectively_default", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="SPECIES\nNames of target and query species (respectively) in\nthe alignment. (default: ['homo_sapiens',\n'mus_musculus'])")), ToolInput(tag="in_chr_sizes", input_type=String(optional=True), prefix="--chrsizes", doc=InputDocumentation(doc="CHRSIZES\nChromosome sizes for the given species. (default:\nNone)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file (default: stdout)")), ToolInput(tag="in_var_3", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file (default: stdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Out_To_Chain_Py_V0_1_0().translate("wdl", allow_empty_container=True)

