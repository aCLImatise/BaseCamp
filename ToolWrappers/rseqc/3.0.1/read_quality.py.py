from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Read_Quality_Py_V0_1_0 = CommandToolBuilder(tool="read_quality.py", base_command=["read_quality.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Alignment file in BAM or SAM format. [required]")), ToolInput(tag="in_out_prefix", input_type=String(optional=True), prefix="--out-prefix", doc=InputDocumentation(doc="Prefix of output files(s). [required]")), ToolInput(tag="in_reduce", input_type=Int(optional=True), prefix="--reduce", doc=InputDocumentation(doc="To avoid making huge vector in R, nucleotide with\nparticular phred score less frequent than this number\nwill be ignored. Increase this number save more memory\nwhile reduce precision. Set to 1 achieves maximum\nprecision (i.e. every nucleotide will be considered).\nThis option only applies to the 'boxplot'. default=1")), ToolInput(tag="in_mapq", input_type=Int(optional=True), prefix="--mapq", doc=InputDocumentation(doc="Minimum mapping quality (phred scaled) for an\nalignment to be called 'uniquely mapped'. default=30\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Read_Quality_Py_V0_1_0().translate("wdl", allow_empty_container=True)

