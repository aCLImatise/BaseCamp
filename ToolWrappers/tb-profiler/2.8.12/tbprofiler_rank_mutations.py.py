from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Tbprofiler_Rank_Mutations_Py_V0_1_0 = CommandToolBuilder(tool="tbprofiler_rank_mutations.py", base_command=["tbprofiler_rank_mutations.py"], inputs=[ToolInput(tag="in_samples", input_type=String(optional=True), prefix="--samples", doc=InputDocumentation(doc="NGS Platform (default: None)")), ToolInput(tag="in_dir", input_type=String(optional=True), prefix="--dir", doc=InputDocumentation(doc="NGS Platform (default: results/)")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="NGS Platform (default: tbdb)")), ToolInput(tag="in_variant_format", input_type=String(optional=True), prefix="--variant-format", doc=InputDocumentation(doc="NGS Platform (default: hgvs)")), ToolInput(tag="in_non_dr", input_type=Boolean(optional=True), prefix="--non-dr", doc=InputDocumentation(doc="NGS Platform (default: False)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tbprofiler_Rank_Mutations_Py_V0_1_0().translate("wdl", allow_empty_container=True)

