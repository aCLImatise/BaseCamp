from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tbprofiler_Analyse_Variants_Py_V0_1_0 = CommandToolBuilder(tool="tbprofiler_analyse_variants.py", base_command=["tbprofiler_analyse_variants.py"], inputs=[ToolInput(tag="in_mutations", input_type=String(optional=True), prefix="--mutations", doc=InputDocumentation(doc="NGS Platform (default: None)")), ToolInput(tag="in_meta", input_type=String(optional=True), prefix="--meta", doc=InputDocumentation(doc="NGS Platform (default: None)")), ToolInput(tag="in_samples", input_type=String(optional=True), prefix="--samples", doc=InputDocumentation(doc="NGS Platform (default: None)")), ToolInput(tag="in_dir", input_type=String(optional=True), prefix="--dir", doc=InputDocumentation(doc="NGS Platform (default: results/)")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="NGS Platform (default: tbdb)")), ToolInput(tag="in_drugs", input_type=String(optional=True), prefix="--drugs", doc=InputDocumentation(doc="NGS Platform (default: None)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tbprofiler_Analyse_Variants_Py_V0_1_0().translate("wdl", allow_empty_container=True)

