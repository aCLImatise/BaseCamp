from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Kneaddata_Build_Database_V0_1_0 = CommandToolBuilder(tool="kneaddata_build_database", base_command=["kneaddata_build_database"], inputs=[ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output-prefix", doc=InputDocumentation(doc="prefix for all output files")), ToolInput(tag="in_bm_tool_path", input_type=File(optional=True), prefix="--bmtool-path", doc=InputDocumentation(doc="path to bmtool executable")), ToolInput(tag="in_sr_prism_path", input_type=File(optional=True), prefix="--srprism-path", doc=InputDocumentation(doc="path to srprism executable")), ToolInput(tag="in_make_blast_db_path", input_type=File(optional=True), prefix="--makeblastdb-path", doc=InputDocumentation(doc="path to makeblastdb executable")), ToolInput(tag="in_logdir", input_type=String(optional=True), prefix="--logdir", doc=InputDocumentation(doc="location to store log files\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kneaddata_Build_Database_V0_1_0().translate("wdl", allow_empty_container=True)

