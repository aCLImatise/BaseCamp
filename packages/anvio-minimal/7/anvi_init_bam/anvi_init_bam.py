from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Anvi_Init_Bam_V0_1_0 = CommandToolBuilder(tool="anvi_init_bam", base_command=["anvi-init-bam"], inputs=[ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="File path to store results. (default: None)")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num-threads", doc=InputDocumentation(doc="Maximum number of threads to use for multithreading\nwhenever possible. Very conservatively, the default is\n1. It is a good idea to not exceed the number of CPUs\n/ cores on your system. Plus, please be careful with\nthis option if you are running your commands on a SGE\n--if you are clusterizing your runs, and asking for\nmultiple threads to use, you may deplete your\nresources very fast. (default: 1)")), ToolInput(tag="in_bam_file_analyze", input_type=String(), position=0, doc=InputDocumentation(doc="BAM file to analyze")), ToolInput(tag="in_raw_bam_file", input_type=File(), position=0, doc=InputDocumentation(doc="🍕 Can provide: ")), ToolInput(tag="in__more_anviinitbam", input_type=File(), position=1, doc=InputDocumentation(doc="🍺 More on `anvi-init-bam`:"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="File path to store results. (default: None)"))], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Init_Bam_V0_1_0().translate("wdl")

