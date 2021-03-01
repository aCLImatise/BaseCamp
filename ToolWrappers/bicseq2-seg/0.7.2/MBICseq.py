from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, Boolean

Mbicseq_V0_1_0 = CommandToolBuilder(tool="MBICseq", base_command=["MBICseq"], inputs=[ToolInput(tag="in_input_file_name", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=": the input file name; default stdin")), ToolInput(tag="in_penalty_lambda_mbicseq", input_type=Float(optional=True), prefix="-l", doc=InputDocumentation(doc=": the penalty lambda of MBIC-seq; default 1.2")), ToolInput(tag="in_rm", input_type=Boolean(optional=True), prefix="--rm", doc=InputDocumentation(doc=": remove the candidate CNV regions that are common to all samples;\nuse this only if the reference is the expected and both tumor and normal present in the binned data,\nin which case these regions are likely to be false positives or germline CNVs\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mbicseq_V0_1_0().translate("wdl", allow_empty_container=True)

