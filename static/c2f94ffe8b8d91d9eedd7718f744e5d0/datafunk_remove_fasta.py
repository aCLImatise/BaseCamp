from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Datafunk_Remove_Fasta_V0_1_0 = CommandToolBuilder(tool="datafunk_remove_fasta", base_command=["datafunk", "remove_fasta"], inputs=[ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="Input file: something about the input file format")), ToolInput(tag="in_filter_file", input_type=File(optional=True), prefix="--filter-file", doc=InputDocumentation(doc="Filter file for filtering based on filter file")), ToolInput(tag="in_output_fast_a", input_type=File(optional=True), prefix="--output-fasta", doc=InputDocumentation(doc="Output file name for resulting filtered fasta file")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Run with high verbosity (debug level logging)"))], outputs=[ToolOutput(tag="out_output_fast_a", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fast_a", type_hint=File()), doc=OutputDocumentation(doc="Output file name for resulting filtered fasta file"))], container="quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Datafunk_Remove_Fasta_V0_1_0().translate("wdl")

