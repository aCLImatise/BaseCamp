from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, String

Umi_Simulator_V0_1_0 = CommandToolBuilder(tool="umi_simulator", base_command=["umi_simulator"], inputs=[ToolInput(tag="in_pcr_cycle", input_type=Int(optional=True), prefix="--pcr-cycle", doc=InputDocumentation(doc="number of PCR cycles (default: 10)")), ToolInput(tag="in_umi_length", input_type=Int(optional=True), prefix="--umi-length", doc=InputDocumentation(doc="length of UMI (default: 18)")), ToolInput(tag="in_pool_size", input_type=Int(optional=True), prefix="--pool-size", doc=InputDocumentation(doc="initial pool size (number of molecules before PCR)\n(default: 100)")), ToolInput(tag="in_output_size", input_type=Int(optional=True), prefix="--output-size", doc=InputDocumentation(doc="final pool size (sequencing depth, i.e. number of\nreads sampled from the PCR amplified pool) (default:\n100)")), ToolInput(tag="in_amplification_rate", input_type=Int(optional=True), prefix="--amplification-rate", doc=InputDocumentation(doc="successful rate of PCR amplification. The actual\namplification rate is uniformally distributed between\nthis number and 1 (default: 0.8)")), ToolInput(tag="in_pcr_error", input_type=Float(optional=True), prefix="--pcr-error", doc=InputDocumentation(doc="error rate of PCR amplification (default: 3e-05)")), ToolInput(tag="in_sequencing_error", input_type=Float(optional=True), prefix="--sequencing-error", doc=InputDocumentation(doc="error rate of sequencing (default: 0.001)")), ToolInput(tag="in_task", input_type=String(optional=True), prefix="--task", doc=InputDocumentation(doc="tasks to simulate multiple conditions. Other PCR-\nrelated arguments are ignored when this option is used\n(default: None)")), ToolInput(tag="in_task_rep", input_type=Int(optional=True), prefix="--task-rep", doc=InputDocumentation(doc="number of replicates when doing tasks (default: 100)")), ToolInput(tag="in_cpu", input_type=Int(optional=True), prefix="--cpu", doc=InputDocumentation(doc="Tasks supporting multiprocessing. (default: 16)")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="starting seed (default: 0)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Umi_Simulator_V0_1_0().translate("wdl", allow_empty_container=True)

