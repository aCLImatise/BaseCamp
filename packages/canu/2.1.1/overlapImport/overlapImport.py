from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Overlapimport_V0_1_0 = CommandToolBuilder(tool="overlapImport", base_command=["overlapImport"], inputs=[ToolInput(tag="in_path_valid_sequence", input_type=File(optional=True), prefix="-S", doc=InputDocumentation(doc="path to valid sequence store")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file name")), ToolInput(tag="in_output_overlap_store", input_type=String(optional=True), prefix="-O", doc=InputDocumentation(doc="output overlap store")), ToolInput(tag="in_coords", input_type=Boolean(optional=True), prefix="-coords", doc=InputDocumentation(doc="as coordinates on each read (default)")), ToolInput(tag="in_hangs", input_type=Boolean(optional=True), prefix="-hangs", doc=InputDocumentation(doc="as dovetail hangs")), ToolInput(tag="in_unaligned", input_type=Boolean(optional=True), prefix="-unaligned", doc=InputDocumentation(doc="as unaligned regions on each read")), ToolInput(tag="in_paf", input_type=Boolean(optional=True), prefix="-paf", doc=InputDocumentation(doc="as miniasm Pairwise mApping Format")), ToolInput(tag="in_raw", input_type=Boolean(optional=True), prefix="-raw", doc=InputDocumentation(doc="uncorrected raw reads")), ToolInput(tag="in_obt", input_type=Boolean(optional=True), prefix="-obt", doc=InputDocumentation(doc="corrected reads")), ToolInput(tag="in_utg", input_type=Boolean(optional=True), prefix="-utg", doc=InputDocumentation(doc="trimmed reads")), ToolInput(tag="in_random", input_type=String(optional=True), prefix="-random", doc=InputDocumentation(doc="create N random overlaps, for store testing")), ToolInput(tag="in_read_ids_be", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="A read IDs will be between x and y")), ToolInput(tag="in_b_read_ids", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="B read IDs will be between x and y")), ToolInput(tag="in_ascii_ovl_file_input_dot", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="output file name"))], container="quay.io/biocontainers/canu:2.1.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Overlapimport_V0_1_0().translate("wdl")

