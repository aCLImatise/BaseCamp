from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Pmmrcalculator_V0_1_0 = CommandToolBuilder(tool="pmmrcalculator", base_command=["pmmrcalculator"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--Input", doc=InputDocumentation(doc="The desired input file prefix. Input files are assumed\nto be <INPUT PREFIX>.geno, <INPUT PREFIX>.snp and\n<INPUT PREFIX>.ind .")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--Output", doc=InputDocumentation(doc="The desired output file name. Omit to print to stdout.")), ToolInput(tag="in_suffix", input_type=File(optional=True), prefix="--Suffix", doc=InputDocumentation(doc="The desired input file suffix. Input files are assumed\nto be <INPUT PREFIX>.geno<INPUT SUFFIX>, <INPUT\nPREFIX>.snp<INPUT SUFFIX> and <INPUT PREFIX>.ind<INPUT\nSUFFIX> .")), ToolInput(tag="in_json", input_type=File(optional=True), prefix="--json", doc=InputDocumentation(doc="Create additional json formatted output file named\n<OUTPUT FILE>.json . [Default:\n'pmmrcalculator_output.json']\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The desired output file name. Omit to print to stdout.")), ToolOutput(tag="out_json", output_type=File(optional=True), selector=InputSelector(input_to_select="in_json", type_hint=File()), doc=OutputDocumentation(doc="Create additional json formatted output file named\n<OUTPUT FILE>.json . [Default:\n'pmmrcalculator_output.json']\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pmmrcalculator_V0_1_0().translate("wdl", allow_empty_container=True)

