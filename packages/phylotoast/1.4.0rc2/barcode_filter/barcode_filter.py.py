from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Barcode_Filter_Py_V0_1_0 = CommandToolBuilder(tool="barcode_filter.py", base_command=["barcode_filter.py"], inputs=[ToolInput(tag="in_input_fast_a_fn", input_type=File(optional=True), prefix="--input_fasta_fn", doc=InputDocumentation(doc="The sequence data file to be filtered.")), ToolInput(tag="in_mapping_fn", input_type=File(optional=True), prefix="--mapping_fn", doc=InputDocumentation(doc="The mapping file containing the barcodes you want\nfiltered sequenced to contain.")), ToolInput(tag="in_quality_fn", input_type=File(optional=True), prefix="--quality_fn", doc=InputDocumentation(doc="The quality data file. If you plan to use quality data\nwith split_libraries.py, you have to filter the\nquality data as well.")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output_prefix", doc=InputDocumentation(doc="The prefix for the output filtered data"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Barcode_Filter_Py_V0_1_0().translate("wdl", allow_empty_container=True)

