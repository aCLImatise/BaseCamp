from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File, String

Fetchorfs_Py_V0_1_0 = CommandToolBuilder(tool="fetchOrfs.py", base_command=["fetchOrfs.py"], inputs=[ToolInput(tag="in_threads_run_default", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Threads to run (default: 1)")), ToolInput(tag="in_fasta_file_operate", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[FASTA], --fasta [FASTA]\nThe fasta file to operate on. (default: None)")), ToolInput(tag="in_file_write_results", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[OUT], --out [OUT]\nThe file to write results to. Leave blank for stdout,\n(default: <_io.TextIOWrapper name='<stdout>' mode='w'\nencoding='utf-8'>)")), ToolInput(tag="in_min", input_type=Int(optional=True), prefix="--min", doc=InputDocumentation(doc="Minimum ORF length in amino acids. (default: 50)")), ToolInput(tag="in_both_strands", input_type=Boolean(optional=True), prefix="--both-strands", doc=InputDocumentation(doc="Search both strands for ORFs. (default: False)")), ToolInput(tag="in_no_met_start", input_type=Boolean(optional=True), prefix="--no-met-start", doc=InputDocumentation(doc="Output ORFs starting with amino acids other than MET\n(default: False)")), ToolInput(tag="in_from_met", input_type=Boolean(optional=True), prefix="--from-met", doc=InputDocumentation(doc="Truncate leading amino acids up to MET (default:\nFalse)")), ToolInput(tag="in_from_met_keep", input_type=Boolean(optional=True), prefix="--from-met-keep", doc=InputDocumentation(doc="Truncate leading amino acids up to MET, but keep the\nuntruncated version as well. (default: False)\n")), ToolInput(tag="in_fast_a", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_file_write_results", output_type=File(optional=True), selector=InputSelector(input_to_select="in_file_write_results", type_hint=File()), doc=OutputDocumentation(doc="[OUT], --out [OUT]\nThe file to write results to. Leave blank for stdout,\n(default: <_io.TextIOWrapper name='<stdout>' mode='w'\nencoding='utf-8'>)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fetchorfs_Py_V0_1_0().translate("wdl", allow_empty_container=True)

