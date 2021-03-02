from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Easel_Downsample_V0_1_0 = CommandToolBuilder(tool="easel_downsample", base_command=["easel", "downsample"], inputs=[ToolInput(tag="in_sequence_sampling_infile", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": sequence sampling: <infile> is file or stream of seqs")), ToolInput(tag="in_big_sequence_sample", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc=": big sequence sample: <infile> is (seekable) seq file")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc=": set random number generator seed  [0]")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_m", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/easel:0.47--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Easel_Downsample_V0_1_0().translate("wdl")

