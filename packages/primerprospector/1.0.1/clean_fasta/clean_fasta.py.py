from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Clean_Fasta_Py_V0_1_0 = CommandToolBuilder(tool="clean_fasta.py", base_command=["clean_fasta.py"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print information during execution -- useful for\ndebugging [default: False]")), ToolInput(tag="in_output_dir", input_type=File(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Output directory for filtered fasta file(s). [default:\n.]")), ToolInput(tag="in_gap_chars", input_type=Boolean(optional=True), prefix="--gap_chars", doc=InputDocumentation(doc="Filter gap characters '.' and '-' [default: True]")), ToolInput(tag="in_space_chars", input_type=Boolean(optional=True), prefix="--space_chars", doc=InputDocumentation(doc="Filter space characters. [default: True]")), ToolInput(tag="in_convert_uracil", input_type=Boolean(optional=True), prefix="--convert_uracil", doc=InputDocumentation(doc="Convert Uracil 'U' characters to 'T'. [default: True]")), ToolInput(tag="in_cap_seqs", input_type=Boolean(optional=True), prefix="--cap_seqs", doc=InputDocumentation(doc="Capitalize filtered sequences [default: True]")), ToolInput(tag="in_fast_a_seqs", input_type=File(optional=True), prefix="--fasta_seqs", doc=InputDocumentation(doc="Target fasta file(s) to filter. Separate multiple\nfiles with a colon. [REQUIRED]\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory for filtered fasta file(s). [default:\n.]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clean_Fasta_Py_V0_1_0().translate("wdl", allow_empty_container=True)

