from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Lyner_Estimate_V0_1_0 = CommandToolBuilder(tool="lyner_estimate", base_command=["lyner", "estimate"], inputs=[ToolInput(tag="in_distribution", input_type=String(optional=True), prefix="--distribution", doc=InputDocumentation(doc="May be any of ['negbinom', 'gamma', 'laisson', 't',\n'norm', 'cauchy', 'lognorm'] as well as any\ndistribution in `scipy.stats.rv_continuous`."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lyner_Estimate_V0_1_0().translate("wdl", allow_empty_container=True)

