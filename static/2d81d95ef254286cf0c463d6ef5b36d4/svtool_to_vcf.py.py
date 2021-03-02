from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Svtool_To_Vcf_Py_V0_1_0 = CommandToolBuilder(tool="svtool_to_vcf.py", base_command=["svtool_to_vcf.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="SV tool output file (default: None)")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Output VCF to create (default: None)")), ToolInput(tag="in_tool", input_type=String(optional=True), prefix="--tool", doc=InputDocumentation(doc="Tool name (default: BreakDancer)")), ToolInput(tag="in_sample", input_type=String(optional=True), prefix="--sample", doc=InputDocumentation(doc="Sample name (default: None)")), ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference FASTA (default: None)")), ToolInput(tag="in_sort", input_type=Boolean(optional=True), prefix="--sort", doc=InputDocumentation(doc="Sort the VCF records before writing (default: False)")), ToolInput(tag="in_index", input_type=Boolean(optional=True), prefix="--index", doc=InputDocumentation(doc="Tabix compress and index the output VCF (default:\nFalse)\n"))], outputs=[ToolOutput(tag="out_input", output_type=File(optional=True), selector=InputSelector(input_to_select="in_input", type_hint=File()), doc=OutputDocumentation(doc="SV tool output file (default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svtool_To_Vcf_Py_V0_1_0().translate("wdl", allow_empty_container=True)

