from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Fu_Cov_V0_1_0 = CommandToolBuilder(tool="fu_cov", base_command=["fu-cov"], inputs=[ToolInput(tag="in_sort", input_type=Boolean(optional=True), prefix="--sort", doc=InputDocumentation(doc="Store contigs in memory, and sort them by descending coverage")), ToolInput(tag="in_min_cov", input_type=Int(optional=True), prefix="--min-cov", doc=InputDocumentation(doc="Minimum coverage (default: 0.0)")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min-len", doc=InputDocumentation(doc="Minimum length (default: 0)")), ToolInput(tag="in_max_cov", input_type=Int(optional=True), prefix="--max-cov", doc=InputDocumentation(doc="Maximum coverage (default: 0.0)")), ToolInput(tag="in_max_len", input_type=Int(optional=True), prefix="--max-len", doc=InputDocumentation(doc="Maximum length (default: 0)")), ToolInput(tag="in_top", input_type=Int(optional=True), prefix="--top", doc=InputDocumentation(doc="Print the first TOP sequences (passing filters) when using --sort (default: 10)"))], outputs=[], container="quay.io/biocontainers/seqfu:0.8.7--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fu_Cov_V0_1_0().translate("wdl")

