from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, Float, File

Hash_Overlap_V0_1_0 = CommandToolBuilder(tool="hash_overlap", base_command=["hash-overlap"], inputs=[ToolInput(tag="in_output_amosformat_messages", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="Output AMOS-format messages instead of default")), ToolInput(tag="in_output_amos_default", input_type=Boolean(optional=True), prefix="-B", doc=InputDocumentation(doc="Output to AMOS bank instead of default")), ToolInput(tag="in_use_based_inclusive", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="Use <n> as lowest read index (0 based inclusive)")), ToolInput(tag="in_use_as_highest", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="Use <n> as highest read index (0 based exclusive)")), ToolInput(tag="in_input_multifasta_file", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="Input is from multi-fasta file <input-name>")), ToolInput(tag="in_set_minimum_overlap", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="Set minimum overlap length to <n>")), ToolInput(tag="in_set_verbose_level", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="Set verbose level to <n>. Higher produces more output.")), ToolInput(tag="in_set_maximum_error", input_type=Float(optional=True), prefix="-x", doc=InputDocumentation(doc="Set maximum error rate to <d>.  E.g., 0.06 is 6% error")), ToolInput(tag="in_be_strandspecific_find", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Be strand-specific: find matches only in the forward\norientation of the reads instead of in their forward and\nreverse orientations. Useful for transcripts and other\ndirectional sequence datasets.")), ToolInput(tag="in_build_overlaps_iids", input_type=File(optional=True), prefix="-I", doc=InputDocumentation(doc="Build overlaps only for reads whose IIDs are in <file>")), ToolInput(tag="in_build_overlaps_eids", input_type=File(optional=True), prefix="-E", doc=InputDocumentation(doc="Build overlaps only for reads whose EIDs are in <file>")), ToolInput(tag="in_hash_overlap", input_type=String(), position=0, doc=InputDocumentation(doc="<input-name>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hash_Overlap_V0_1_0().translate("wdl", allow_empty_container=True)

