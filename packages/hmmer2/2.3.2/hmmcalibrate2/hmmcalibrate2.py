from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File, Boolean

Hmmcalibrate2_V0_1_0 = CommandToolBuilder(tool="hmmcalibrate2", base_command=["hmmcalibrate2"], inputs=[ToolInput(tag="in_cpu", input_type=String(optional=True), prefix="--cpu", doc=InputDocumentation(doc=": run <n> threads in parallel (if threaded)")), ToolInput(tag="in_fixed", input_type=Int(optional=True), prefix="--fixed", doc=InputDocumentation(doc=": fix random sequence length at <n>")), ToolInput(tag="in_hist_file", input_type=File(optional=True), prefix="--histfile", doc=InputDocumentation(doc=": save histogram(s) to file <f>")), ToolInput(tag="in_mean", input_type=Int(optional=True), prefix="--mean", doc=InputDocumentation(doc=": set random seq length mean at <x> [350]")), ToolInput(tag="in_num", input_type=Int(optional=True), prefix="--num", doc=InputDocumentation(doc=": set number of sampled seqs to <n> [5000]")), ToolInput(tag="in_pvm", input_type=Boolean(optional=True), prefix="--pvm", doc=InputDocumentation(doc=": run on a Parallel Virtual Machine (PVM)")), ToolInput(tag="in_sd", input_type=Int(optional=True), prefix="--sd", doc=InputDocumentation(doc=": set random seq length std. dev to <x> [350]")), ToolInput(tag="in_seed", input_type=String(optional=True), prefix="--seed", doc=InputDocumentation(doc=": set random seed to <n> [time()]")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_hmmcalibrate", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_hmm_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmcalibrate2_V0_1_0().translate("wdl", allow_empty_container=True)

