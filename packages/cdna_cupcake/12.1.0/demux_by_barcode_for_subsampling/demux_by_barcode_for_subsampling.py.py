from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Demux_By_Barcode_For_Subsampling_Py_V0_1_0 = CommandToolBuilder(tool="demux_by_barcode_for_subsampling.py", base_command=["demux_by_barcode_for_subsampling.py"], inputs=[ToolInput(tag="in_ignore_novel", input_type=Boolean(optional=True), prefix="--ignore_novel", doc=InputDocumentation(doc="Ignore novel genes/transcripts (default: off)")), ToolInput(tag="in_positional_arguments", input_type=String(), position=0, doc=InputDocumentation(doc="positional arguments:")), ToolInput(tag="in_class_filename", input_type=String(), position=1, doc=InputDocumentation(doc="SQANTI classification file")), ToolInput(tag="in_fast_a_filename", input_type=String(), position=2, doc=InputDocumentation(doc="FASTA filename")), ToolInput(tag="in_demux_count_file", input_type=String(), position=3, doc=InputDocumentation(doc="Demux count file")), ToolInput(tag="in_output_prefix", input_type=String(), position=4, doc=InputDocumentation(doc="Output prefix for GFF outputs")), ToolInput(tag="in_tuples_indicating_barcode", input_type=String(), position=5, doc=InputDocumentation(doc="Tuples indicating barcode grouping"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Demux_By_Barcode_For_Subsampling_Py_V0_1_0().translate("wdl", allow_empty_container=True)

