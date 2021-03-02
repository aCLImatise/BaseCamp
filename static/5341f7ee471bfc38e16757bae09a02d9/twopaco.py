from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Directory, Int, String

Twopaco_V0_1_0 = CommandToolBuilder(tool="twopaco", base_command=["twopaco"], inputs=[ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output file name prefix")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="--test", doc=InputDocumentation(doc="Run tests")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="Temporary directory name")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of worker threads")), ToolInput(tag="in_rounds", input_type=Int(optional=True), prefix="--rounds", doc=InputDocumentation(doc="Number of computation rounds")), ToolInput(tag="in_has_hf_number", input_type=Int(optional=True), prefix="--hashfnumber", doc=InputDocumentation(doc="Number of hash functions")), ToolInput(tag="in_filter_size", input_type=Int(optional=True), prefix="--filtersize", doc=InputDocumentation(doc="(required)  Size of the filter")), ToolInput(tag="in_k_value", input_type=String(optional=True), prefix="--kvalue", doc=InputDocumentation(doc="Value of k")), ToolInput(tag="in_two_paco", input_type=String(), position=0, doc=InputDocumentation(doc="[-o <file name>] [--test] [--tmpdir <directory name>] [-t\n<integer>] [-r <integer>] [-q <integer>] -f <integer> [-k\n<oddc>] [--] [--version] [-h] <fasta files with genomes> ..."))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output file name prefix"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Twopaco_V0_1_0().translate("wdl", allow_empty_container=True)

