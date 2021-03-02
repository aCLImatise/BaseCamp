from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Reads_Bx_Sqlite3_Py_V0_1_0 = CommandToolBuilder(tool="reads_bx_sqlite3.py", base_command=["reads_bx_sqlite3.py"], inputs=[ToolInput(tag="in_fast_q", input_type=File(optional=True), prefix="--fastq", doc=InputDocumentation(doc="gzipped barcoded Fastq file from reads obtained with\nlongranger basic")), ToolInput(tag="in_idx", input_type=File(optional=True), prefix="--idx", doc=InputDocumentation(doc="barcodes index file")), ToolInput(tag="in_bdx", input_type=String(optional=True), prefix="--bdx", doc=InputDocumentation(doc="barcodes list")), ToolInput(tag="in_gz", input_type=Boolean(optional=True), prefix="--gz", doc=InputDocumentation(doc="fastq is zipped")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="mode of storage (shelve/sqlite)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reads_Bx_Sqlite3_Py_V0_1_0().translate("wdl", allow_empty_container=True)

