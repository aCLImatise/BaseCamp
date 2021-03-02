from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File

Clipcontext_Lst_V0_1_0 = CommandToolBuilder(tool="clipcontext_lst", base_command=["clipcontext", "lst"], inputs=[ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min-len", doc=InputDocumentation(doc="Accept only transcripts with length >= --min-len (default:\nFalse)")), ToolInput(tag="in_strict", input_type=Boolean(optional=True), prefix="--strict", doc=InputDocumentation(doc="Accept only transcripts with transcript support level (TSL)\n1-5 (default: False)")), ToolInput(tag="in_add_infos", input_type=Boolean(optional=True), prefix="--add-infos", doc=InputDocumentation(doc="Add additional information columns (gene ID, TSL, length) to\noutput file (default: False)")), ToolInput(tag="in_gtf", input_type=File(optional=True), prefix="--gtf", doc=InputDocumentation(doc="Genomic annotations (hg38) GTF file (.gtf or .gtf.gz) (NOTE:\ntested with Ensembl GTF files, expects transcript support\nlevel (TSL) information)")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output transcript IDs list file"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output transcript IDs list file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clipcontext_Lst_V0_1_0().translate("wdl", allow_empty_container=True)

