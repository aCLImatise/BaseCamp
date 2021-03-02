from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, Boolean, File, String

Clipcontext_Int_V0_1_0 = CommandToolBuilder(tool="clipcontext_int", base_command=["clipcontext", "int"], inputs=[ToolInput(tag="in_min_intron_ol", input_type=Float(optional=True), prefix="--min-intron-ol", doc=InputDocumentation(doc="Minimum intron overlap of a site to be reported as\nintron overlapping (intersectBed -f parameter)\n(default: 0.9)")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min-len", doc=InputDocumentation(doc="Minimum input site length for filtering --in BED file\n(default: False)")), ToolInput(tag="in_max_len", input_type=Int(optional=True), prefix="--max-len", doc=InputDocumentation(doc="Maximum input site length for filtering --in BED file\n(default: False)")), ToolInput(tag="in_thr", input_type=Float(optional=True), prefix="--thr", doc=InputDocumentation(doc="Filter out --in BED regions < --thr column 5 score\n(default: no filtering)")), ToolInput(tag="in_rev_filter", input_type=Boolean(optional=True), prefix="--rev-filter", doc=InputDocumentation(doc="Reverse filtering (keep values <= --thr and prefer\nsites with smaller values) (default: False)")), ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="CLIP peak regions input BED file (6-column format)")), ToolInput(tag="in_tr", input_type=File(optional=True), prefix="--tr", doc=InputDocumentation(doc="Transcript sequence IDs list file to define intron")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="CLIP peak regions overlapping with introns output BED\nfile\n")), ToolInput(tag="in_gtf", input_type=String(optional=True), prefix="--gtf", doc=InputDocumentation(doc="")), ToolInput(tag="in_regions", input_type=String(), position=0, doc=InputDocumentation(doc="--gtf str             Genomic annotations (hg38) GTF file (.gtf or .gtf.gz)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="CLIP peak regions overlapping with introns output BED\nfile\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clipcontext_Int_V0_1_0().translate("wdl", allow_empty_container=True)

