from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, File, String

Lissero_V0_1_0 = CommandToolBuilder(tool="lissero", base_command=["lissero"], inputs=[ToolInput(tag="in_serotype_db", input_type=Float(optional=True), prefix="--serotype_db", doc=InputDocumentation(doc="[default: /usr/local/lib/python3.9/site-\npackages/lissero/db]")), ToolInput(tag="in_min_id", input_type=Float(optional=True), prefix="--min_id", doc=InputDocumentation(doc="Minimum percent identity to accept a match. [0-100]\n[default: 95.0]")), ToolInput(tag="in_min_cov", input_type=Float(optional=True), prefix="--min_cov", doc=InputDocumentation(doc="Minimum coverage of the gene to accept a match.\n[0-100]  [default: 95.0]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--logfile", doc=InputDocumentation(doc="Save log to a file instead of printing to stderr")), ToolInput(tag="in_fast_a_dot_dot_dot", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/lissero:0.4.8--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lissero_V0_1_0().translate("wdl")

