from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Fsm_Lite_V0_1_0 = CommandToolBuilder(tool="fsm_lite", base_command=["fsm-lite"], inputs=[ToolInput(tag="in_list", input_type=File(optional=True), prefix="--list", doc=InputDocumentation(doc="Text file that lists all input files as whitespace-separated pairs\n<data-name> <data-filename>\nwhere <data-name> is unique identifier (without whitespace)\nand <data-filename> is full path to each input file.\nDefault data file format is FASTA (uncompressed).")), ToolInput(tag="in_tmp", input_type=File(optional=True), prefix="--tmp", doc=InputDocumentation(doc="Store temporary index data")), ToolInput(tag="in_min", input_type=Int(optional=True), prefix="--min", doc=InputDocumentation(doc="Minimum length to report (default 9)")), ToolInput(tag="in_max", input_type=Int(optional=True), prefix="--max", doc=InputDocumentation(doc="Maximum length to report (default 100)")), ToolInput(tag="in_freq", input_type=Int(optional=True), prefix="--freq", doc=InputDocumentation(doc="Minimum frequency per input file to report (default 1)")), ToolInput(tag="in_min_supp", input_type=Int(optional=True), prefix="--minsupp", doc=InputDocumentation(doc="Minimum number of input files with support to report (default 2)")), ToolInput(tag="in_max_supp", input_type=Int(optional=True), prefix="--maxsupp", doc=InputDocumentation(doc="Maximum number of input files with support to report (default inf)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fsm_Lite_V0_1_0().translate("wdl", allow_empty_container=True)

