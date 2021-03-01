from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File, Float, Boolean

Basenji_Data_Write_Py_V0_1_0 = CommandToolBuilder(tool="basenji_data_write.py", base_command=["basenji_data_write.py"], inputs=[ToolInput(tag="in_sequence_start_index", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="Sequence start index [Default: 0]")), ToolInput(tag="in_sequence_end_index", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="Sequence end index [Default: none]")), ToolInput(tag="in_te", input_type=String(optional=True), prefix="--te", doc=InputDocumentation(doc="Extend targets vector [Default: none]")), ToolInput(tag="in_ts", input_type=Int(optional=True), prefix="--ts", doc=InputDocumentation(doc="Write targets into vector starting at index [Default:\n0")), ToolInput(tag="in_unmappable_array_numpy", input_type=File(optional=True), prefix="-u", doc=InputDocumentation(doc="Unmappable array numpy file")), ToolInput(tag="in_u_map_clip", input_type=Float(optional=True), prefix="--umap_clip", doc=InputDocumentation(doc="Clip values at unmappable positions to distribution\nquantiles, eg 0.25. [Default: 1]")), ToolInput(tag="in_u_map_tfr", input_type=Boolean(optional=True), prefix="--umap_tfr", doc=InputDocumentation(doc="Save umap array into TFRecords [Default: False]")), ToolInput(tag="in_fast_a_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seqs_bed_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_seqs_cov_dir", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_tfr_file", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/basenji:0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenji_Data_Write_Py_V0_1_0().translate("wdl")

