from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cobs_Benchmark_Fpr_V0_1_0 = CommandToolBuilder(tool="cobs_benchmark_fpr", base_command=["cobs", "benchmark-fpr"], inputs=[ToolInput(tag="in_dist", input_type=Boolean(optional=True), prefix="--dist", doc=InputDocumentation(doc="calculate false positive distribution")), ToolInput(tag="in_num_km_ers", input_type=Boolean(optional=True), prefix="--num-kmers", doc=InputDocumentation(doc="number of kmers of each query, default: 1000")), ToolInput(tag="in_queries", input_type=Boolean(optional=True), prefix="--queries", doc=InputDocumentation(doc="number of random queries to run, default: 10000")), ToolInput(tag="in_seed", input_type=Boolean(optional=True), prefix="--seed", doc=InputDocumentation(doc="random seed")), ToolInput(tag="in_warm_up", input_type=Boolean(optional=True), prefix="--warmup", doc=InputDocumentation(doc="number of random warmup queries to run, default: 100")), ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc="path to the input file"))], outputs=[], container="quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cobs_Benchmark_Fpr_V0_1_0().translate("wdl")

