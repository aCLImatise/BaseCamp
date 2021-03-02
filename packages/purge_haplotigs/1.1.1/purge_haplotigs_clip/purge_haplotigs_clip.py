from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Purge_Haplotigs_Clip_V0_1_0 = CommandToolBuilder(tool="purge_haplotigs_clip", base_command=["purge_haplotigs", "clip"], inputs=[ToolInput(tag="in_primary", input_type=Boolean(optional=True), prefix="-primary", doc=InputDocumentation(doc="Primary contigs (curated.fasta by default) from the 'purge' stage.")), ToolInput(tag="in_out_prefix", input_type=File(optional=True), prefix="-outPrefix", doc=InputDocumentation(doc="Output file prefix. DEFAULT = clip")), ToolInput(tag="in_length", input_type=Boolean(optional=True), prefix="-length", doc=InputDocumentation(doc="Minimum overlap length to trigger clipping. DEFAULT = 10000")), ToolInput(tag="in_gap", input_type=Boolean(optional=True), prefix="-gap", doc=InputDocumentation(doc="Maximum end gap to allow clipping. DEFAULT = 10000")), ToolInput(tag="in_ratio", input_type=Boolean(optional=True), prefix="-ratio", doc=InputDocumentation(doc="Max allowable gap to alignment ratio. DEFAULT = 0.5")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="-threads", doc=InputDocumentation(doc="Threds to use. DEFAULT = 4")), ToolInput(tag="in_h", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_prefix", type_hint=File()), doc=OutputDocumentation(doc="Output file prefix. DEFAULT = clip"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Purge_Haplotigs_Clip_V0_1_0().translate("wdl", allow_empty_container=True)

