from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, File, String

Annotatetranscripts_Pl_V0_1_0 = CommandToolBuilder(tool="annotateTranscripts.pl", base_command=["annotateTranscripts.pl"], inputs=[ToolInput(tag="in_no_repeats", input_type=Boolean(optional=True), prefix="-noRepeats", doc=InputDocumentation(doc="(skip repeat annotation)")), ToolInput(tag="in_min_overlap", input_type=Boolean(optional=True), prefix="-minOverlap", doc=InputDocumentation(doc="<#> (Min fraction of overlap to assign transcript as genic, 0.1)")), ToolInput(tag="in_promoter_size", input_type=Boolean(optional=True), prefix="-promoterSize", doc=InputDocumentation(doc="<#> (to identify TSS antisense transcripts vs. enhancers, default: 500)")), ToolInput(tag="in_repeat_size", input_type=Boolean(optional=True), prefix="-repeatSize", doc=InputDocumentation(doc="<#> (size from beginning of transcript to use for repeat ann, default: 500)")), ToolInput(tag="in_asses_rpkm_fragments", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="(to asses rpkm, merge fragments of same gene)")), ToolInput(tag="in_min", input_type=Boolean(optional=True), prefix="-min", doc=InputDocumentation(doc="<#> (minimum rpkm, default: 0.01)")), ToolInput(tag="in_min_p", input_type=Boolean(optional=True), prefix="-minp", doc=InputDocumentation(doc="<#> (minimum number of unique reads, default: 10)")), ToolInput(tag="in_strand", input_type=Boolean(optional=True), prefix="-strand", doc=InputDocumentation(doc="<+|-|both> (strand to search for reads, default: +)")), ToolInput(tag="in_merge", input_type=Boolean(optional=True), prefix="-merge", doc=InputDocumentation(doc="<#> (maximum fold difference for adjacent transcripts to be merged, e.g. 2)")), ToolInput(tag="in_transcript_peak_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Annotatetranscripts_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

