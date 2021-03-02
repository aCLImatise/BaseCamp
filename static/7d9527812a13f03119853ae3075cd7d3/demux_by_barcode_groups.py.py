from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Demux_By_Barcode_Groups_Py_V0_1_0 = CommandToolBuilder(tool="demux_by_barcode_groups.py", base_command=["demux_by_barcode_groups.py"], inputs=[ToolInput(tag="in_pooled_fast_x", input_type=String(optional=True), prefix="--pooled_fastx", doc=InputDocumentation(doc="Pooled FASTA/FASTQ (optional, if given, will also\noutput demux fa/fq)\n")), ToolInput(tag="in_positional_arguments", input_type=String(), position=0, doc=InputDocumentation(doc="positional arguments:")), ToolInput(tag="in_pooled_gff", input_type=String(), position=1, doc=InputDocumentation(doc="Pooled GFF file")), ToolInput(tag="in_demux_count_file", input_type=String(), position=2, doc=InputDocumentation(doc="Demux count file")), ToolInput(tag="in_output_prefix", input_type=String(), position=3, doc=InputDocumentation(doc="Output prefix for GFF outputs")), ToolInput(tag="in_tuples_indicating_barcode", input_type=String(), position=4, doc=InputDocumentation(doc="Tuples indicating barcode grouping"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Demux_By_Barcode_Groups_Py_V0_1_0().translate("wdl", allow_empty_container=True)

