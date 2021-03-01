from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Array, Int

Breakseq2_Gen_Bplib_Py_V0_1_0 = CommandToolBuilder(tool="breakseq2_gen_bplib.py", base_command=["breakseq2_gen_bplib.py"], inputs=[ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference FASTA (default: None)")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Output FASTA to generate. Leave unspecified for stdout\n(default: None)")), ToolInput(tag="in_chromosomes", input_type=Array(t=String(), optional=True), prefix="--chromosomes", doc=InputDocumentation(doc="List of chromosomes to process (default: [])")), ToolInput(tag="in_log", input_type=String(optional=True), prefix="--log", doc=InputDocumentation(doc="Log level (default: INFO)")), ToolInput(tag="in_bp_lib_gff", input_type=String(optional=True), prefix="--bplib_gff", doc=InputDocumentation(doc="Breakpoint GFF input (default: None)")), ToolInput(tag="in_junction_length", input_type=Int(optional=True), prefix="--junction_length", doc=InputDocumentation(doc="Junction length (default: 200)")), ToolInput(tag="in_format_version", input_type=String(optional=True), prefix="--format_version", doc=InputDocumentation(doc="Version of breakpoint library format to use (default:\n2)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Breakseq2_Gen_Bplib_Py_V0_1_0().translate("wdl", allow_empty_container=True)

