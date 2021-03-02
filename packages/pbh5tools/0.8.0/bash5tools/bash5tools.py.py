from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Bash5Tools_Py_V0_1_0 = CommandToolBuilder(tool="bash5tools.py", base_command=["bash5tools.py"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Set the verbosity level (default: None)")), ToolInput(tag="in_profile", input_type=Boolean(optional=True), prefix="--profile", doc=InputDocumentation(doc="Print runtime profile at exit (default: False)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Catch exceptions in debugger (requires ipdb) (default:\nFalse)")), ToolInput(tag="in_outfile_prefix", input_type=File(optional=True), prefix="--outFilePrefix", doc=InputDocumentation(doc="output filename prefix [None]")), ToolInput(tag="in_read_type", input_type=String(optional=True), prefix="--readType", doc=InputDocumentation(doc="read type (ccs, subreads, or unrolled) []")), ToolInput(tag="in_out_type", input_type=File(optional=True), prefix="--outType", doc=InputDocumentation(doc="output file type (fasta, fastq) [fasta]")), ToolInput(tag="in_minlength", input_type=Int(optional=True), prefix="--minLength", doc=InputDocumentation(doc="min read length [0]")), ToolInput(tag="in_min_read_score", input_type=Int(optional=True), prefix="--minReadScore", doc=InputDocumentation(doc="min read score, valid only with\n--readType={unrolled,subreads} [0]")), ToolInput(tag="in_min_passes", input_type=Int(optional=True), prefix="--minPasses", doc=InputDocumentation(doc="min number of CCS passes, valid only with\n--readType=ccs [0]\n"))], outputs=[ToolOutput(tag="out_outfile_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile_prefix", type_hint=File()), doc=OutputDocumentation(doc="output filename prefix [None]")), ToolOutput(tag="out_out_type", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_type", type_hint=File()), doc=OutputDocumentation(doc="output file type (fasta, fastq) [fasta]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bash5Tools_Py_V0_1_0().translate("wdl", allow_empty_container=True)

