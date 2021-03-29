from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bracken_V0_1_0 = CommandToolBuilder(tool="bracken", base_command=["bracken"], inputs=[ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_w", input_type=String(optional=True), prefix="-w", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_my_db", input_type=String(), position=0, doc=InputDocumentation(doc="location of Kraken database")), ToolInput(tag="in_input", input_type=String(), position=1, doc=InputDocumentation(doc="Kraken REPORT file to use for abundance estimation")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc="file name for Bracken default output")), ToolInput(tag="in_out_report", input_type=String(), position=3, doc=InputDocumentation(doc="New Kraken REPORT output file with Bracken read estimates")), ToolInput(tag="in_read_len", input_type=String(), position=4, doc=InputDocumentation(doc="read length to get all classifications for (default: 100)")), ToolInput(tag="in_level", input_type=String(), position=5, doc=InputDocumentation(doc="level to estimate abundance at [options: D,P,C,O,F,G,S,S1,etc] (default: S)")), ToolInput(tag="in_threshold", input_type=String(), position=6, doc=InputDocumentation(doc="number of reads required PRIOR to abundance estimation to perform reestimation (default: 0)"))], outputs=[], container="quay.io/biocontainers/bracken:2.6.1--py38hed8969a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bracken_V0_1_0().translate("wdl")

