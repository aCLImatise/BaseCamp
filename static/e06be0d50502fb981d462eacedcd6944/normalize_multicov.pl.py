from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Normalize_Multicov_Pl_V0_1_0 = CommandToolBuilder(tool="normalize_multicov.pl", base_command=["normalize_multicov.pl"], inputs=[ToolInput(tag="in_input_file_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Input file in 'bedtools multicov' output format, i.e. an extended\nBED12 file where each colum past the 12th lists the read counts for\none sample/condition.")), ToolInput(tag="in_read_length", input_type=Boolean(optional=True), prefix="--readlength", doc=InputDocumentation(doc="Read length of the RNA-seq experiment.")), ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="Output folder.")), ToolInput(tag="in_type", input_type=Boolean(optional=True), prefix="--type", doc=InputDocumentation(doc="Normalization method, either 'TPM' (default) or 'RPKM'.")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints the manual page and exits\n"))], outputs=[ToolOutput(tag="out_out", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output folder."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Normalize_Multicov_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

