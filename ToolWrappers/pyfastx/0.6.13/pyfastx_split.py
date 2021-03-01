from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, String

Pyfastx_Split_V0_1_0 = CommandToolBuilder(tool="pyfastx_split", base_command=["pyfastx", "split"], inputs=[ToolInput(tag="in_split_fastaq_file_new", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="split a fasta/q file into N new files with even size")), ToolInput(tag="in_split_fastaq_file_containingthe", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="split a fasta/q file into multiple files containing\nthe same sequence counts")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="output directory, default is current folder\n")), ToolInput(tag="in_fast_x", input_type=String(), position=0, doc=InputDocumentation(doc="fasta or fastq file, gzip support"))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="output directory, default is current folder\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyfastx_Split_V0_1_0().translate("wdl", allow_empty_container=True)

