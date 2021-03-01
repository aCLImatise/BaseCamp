from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tbprofiler_Odds_Ratios_Py_V0_1_0 = CommandToolBuilder(tool="tbprofiler_odds_ratios.py", base_command=["tbprofiler_odds_ratios.py"], inputs=[ToolInput(tag="in_samples", input_type=String(optional=True), prefix="--samples", doc=InputDocumentation(doc="NGS Platform (default: None)")), ToolInput(tag="in_dir", input_type=String(optional=True), prefix="--dir", doc=InputDocumentation(doc="NGS Platform (default: results/)")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="NGS Platform (default: tbdb)")), ToolInput(tag="in_variant_format", input_type=String(optional=True), prefix="--variant-format", doc=InputDocumentation(doc="NGS Platform (default: hgvs)\n"))], outputs=[], container="quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tbprofiler_Odds_Ratios_Py_V0_1_0().translate("wdl")

