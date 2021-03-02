from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Split_Sequence_Data_Py_V0_1_0 = CommandToolBuilder(tool="split_sequence_data.py", base_command=["split_sequence_data.py"], inputs=[ToolInput(tag="in_input_fast_a_fn", input_type=File(optional=True), prefix="--input_fasta_fn", doc=InputDocumentation(doc="The sequence data file to be split up.")), ToolInput(tag="in_num_output_files", input_type=Int(optional=True), prefix="--num_output_files", doc=InputDocumentation(doc="The number of files the input data should be split\ninto.")), ToolInput(tag="in_output_dir", input_type=String(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="The location to write the split data files."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Split_Sequence_Data_Py_V0_1_0().translate("wdl", allow_empty_container=True)

