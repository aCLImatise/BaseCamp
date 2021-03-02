from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Pyfastx_Extract_V0_1_0 = CommandToolBuilder(tool="pyfastx_extract", base_command=["pyfastx", "extract"], inputs=[ToolInput(tag="in_list_file", input_type=File(optional=True), prefix="--list-file", doc=InputDocumentation(doc="a file containing sequence or read names, one name per\nline")), ToolInput(tag="in_reverse_complement", input_type=Boolean(optional=True), prefix="--reverse-complement", doc=InputDocumentation(doc="output reverse complement sequence")), ToolInput(tag="in_out_fast_a", input_type=Boolean(optional=True), prefix="--out-fasta", doc=InputDocumentation(doc="output fasta format when extract reads from fastq,\ndefault output fastq format")), ToolInput(tag="in_out_file", input_type=File(optional=True), prefix="--out-file", doc=InputDocumentation(doc="output file, default: output to stdout")), ToolInput(tag="in_sequential_read", input_type=Boolean(optional=True), prefix="--sequential-read", doc=InputDocumentation(doc="start sequential reading, particularly suitable for\nextracting large numbers of sequences\n")), ToolInput(tag="in_fast_x", input_type=String(), position=0, doc=InputDocumentation(doc="fasta or fastq file, gzip support")), ToolInput(tag="in_name", input_type=String(), position=1, doc=InputDocumentation(doc="sequence name or read name, multiple names were\nseparated by space"))], outputs=[ToolOutput(tag="out_out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc="output file, default: output to stdout"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyfastx_Extract_V0_1_0().translate("wdl", allow_empty_container=True)

