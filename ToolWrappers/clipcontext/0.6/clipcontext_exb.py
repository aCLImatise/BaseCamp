from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, File

Clipcontext_Exb_V0_1_0 = CommandToolBuilder(tool="clipcontext_exb", base_command=["clipcontext", "exb"], inputs=[ToolInput(tag="in_max_dist", input_type=Int(optional=True), prefix="--max-dist", doc=InputDocumentation(doc="Maximum distance of CLIP peak region end to nearest exon end\nfor CLIP region to still be output (default: 50)")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min-len", doc=InputDocumentation(doc="Minimum input site length for filtering --in BED file\n(default: False)")), ToolInput(tag="in_max_len", input_type=Int(optional=True), prefix="--max-len", doc=InputDocumentation(doc="Maximum input site length for filtering --in BED file\n(default: False)")), ToolInput(tag="in_thr", input_type=Float(optional=True), prefix="--thr", doc=InputDocumentation(doc="Filter out --in BED regions < --thr column 5 score (default:\nno filtering)")), ToolInput(tag="in_rev_filter", input_type=Boolean(optional=True), prefix="--rev-filter", doc=InputDocumentation(doc="Reverse filtering (keep values <= --thr and prefer sites\nwith smaller values) (default: False)")), ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="CLIP peak regions input BED file (6-column format)")), ToolInput(tag="in_tr", input_type=File(optional=True), prefix="--tr", doc=InputDocumentation(doc="Transcript sequence IDs list file to define exon regions")), ToolInput(tag="in_gtf", input_type=File(optional=True), prefix="--gtf", doc=InputDocumentation(doc="Genomic annotations (hg38) GTF file (.gtf or .gtf.gz)")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="CLIP peak regions near exon borders output BED file"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="CLIP peak regions near exon borders output BED file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clipcontext_Exb_V0_1_0().translate("wdl", allow_empty_container=True)

