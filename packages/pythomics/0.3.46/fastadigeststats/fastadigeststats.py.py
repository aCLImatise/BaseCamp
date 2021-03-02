from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File, Int

Fastadigeststats_Py_V0_1_0 = CommandToolBuilder(tool="fastadigeststats.py", base_command=["fastadigeststats.py"], inputs=[ToolInput(tag="in_threads_to_run", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="Threads to run")), ToolInput(tag="in_fasta_file_operate", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[FASTA], --fasta [FASTA]\nThe fasta file to operate on.")), ToolInput(tag="in_file_write_results", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[OUT], --out [OUT]\nThe file to write results to. Leave blank for stdout,")), ToolInput(tag="in_enzyme", input_type=String(optional=True), prefix="--enzyme", doc=InputDocumentation(doc="[{trypsin,lysc,none,argc,gluc,aspn,V8} ...]\nEnzyme to use. Pass a list like 'trypsin lysc' to use\nmultiple enzymes. The order of enzymes will be the\norder of digestion if digesting in series.")), ToolInput(tag="in_enzyme_pattern", input_type=String(optional=True), prefix="--enzyme-pattern", doc=InputDocumentation(doc="A regex cleavage pattern such as [KR]|{P} to cleave\nproteins with.")), ToolInput(tag="in_min", input_type=Int(optional=True), prefix="--min", doc=InputDocumentation(doc="Minimum cleavage length")), ToolInput(tag="in_max", input_type=Int(optional=True), prefix="--max", doc=InputDocumentation(doc="Maximum cleavage length")), ToolInput(tag="in_parallel", input_type=Boolean(optional=True), prefix="--parallel", doc=InputDocumentation(doc="Should cleavages be done in parallel (default is\nserial digestion)?\n")), ToolInput(tag="in_fast_a", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_file_write_results", output_type=File(optional=True), selector=InputSelector(input_to_select="in_file_write_results", type_hint=File()), doc=OutputDocumentation(doc="[OUT], --out [OUT]\nThe file to write results to. Leave blank for stdout,"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastadigeststats_Py_V0_1_0().translate("wdl", allow_empty_container=True)

