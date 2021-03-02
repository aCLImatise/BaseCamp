from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Junction_Saturation_Py_V0_1_0 = CommandToolBuilder(tool="junction_saturation.py", base_command=["junction_saturation.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Alignment file in BAM or SAM format.[required]")), ToolInput(tag="in_out_prefix", input_type=String(optional=True), prefix="--out-prefix", doc=InputDocumentation(doc="Prefix of output files(s). [required]")), ToolInput(tag="in_ref_gene", input_type=String(optional=True), prefix="--refgene", doc=InputDocumentation(doc="Reference gene model in bed fomat. This gene model is\nused to determine known splicing junctions. [required]")), ToolInput(tag="in_percentile_floor", input_type=Int(optional=True), prefix="--percentile-floor", doc=InputDocumentation(doc="Sampling starts from this percentile. A integer\nbetween 0 and 100. default=5")), ToolInput(tag="in_percentile_ceiling", input_type=Int(optional=True), prefix="--percentile-ceiling", doc=InputDocumentation(doc="Sampling ends at this percentile. A integer between 0\nand 100. default=100")), ToolInput(tag="in_percentile_step", input_type=Int(optional=True), prefix="--percentile-step", doc=InputDocumentation(doc="Sampling frequency. Smaller value means more sampling\ntimes. A integer between 0 and 100. default=5")), ToolInput(tag="in_min_intron", input_type=Int(optional=True), prefix="--min-intron", doc=InputDocumentation(doc="Minimum intron size (bp). default=50")), ToolInput(tag="in_min_coverage", input_type=Int(optional=True), prefix="--min-coverage", doc=InputDocumentation(doc="Minimum number of supportting reads to call a\njunction. default=1")), ToolInput(tag="in_mapq", input_type=Int(optional=True), prefix="--mapq", doc=InputDocumentation(doc="Minimum mapping quality (phred scaled) for an\nalignment to be called 'uniquely mapped'. default=30\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Junction_Saturation_Py_V0_1_0().translate("wdl", allow_empty_container=True)

