from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Abricate_V0_1_0 = CommandToolBuilder(tool="abricate", base_command=["abricate"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Verbose debug output.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Quiet mode, no stderr output.")), ToolInput(tag="in_check", input_type=Boolean(optional=True), prefix="--check", doc=InputDocumentation(doc="Check dependencies are installed.")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="[N]   Use this many BLAST+ threads [1].")), ToolInput(tag="in_fof_n", input_type=Boolean(optional=True), prefix="--fofn", doc=InputDocumentation(doc="[X]      Run on files listed in this file [].")), ToolInput(tag="in_setup_db", input_type=Boolean(optional=True), prefix="--setupdb", doc=InputDocumentation(doc="Format all the BLAST databases.")), ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="List included databases.")), ToolInput(tag="in_datadir", input_type=Boolean(optional=True), prefix="--datadir", doc=InputDocumentation(doc="[X]   Databases folder [/usr/local/db].")), ToolInput(tag="in_db", input_type=Boolean(optional=True), prefix="--db", doc=InputDocumentation(doc="[X]        Database to use [ncbi].")), ToolInput(tag="in_noheader", input_type=Boolean(optional=True), prefix="--noheader", doc=InputDocumentation(doc="Suppress column header row.")), ToolInput(tag="in_csv", input_type=Boolean(optional=True), prefix="--csv", doc=InputDocumentation(doc="Output CSV instead of TSV.")), ToolInput(tag="in_no_path", input_type=Boolean(optional=True), prefix="--nopath", doc=InputDocumentation(doc="Strip filename paths from FILE column.")), ToolInput(tag="in_mini_d", input_type=Boolean(optional=True), prefix="--minid", doc=InputDocumentation(doc="[n.n]   Minimum DNA %identity [80].")), ToolInput(tag="in_min_cov", input_type=Boolean(optional=True), prefix="--mincov", doc=InputDocumentation(doc="[n.n]  Minimum DNA %coverage [80].")), ToolInput(tag="in_summary", input_type=Boolean(optional=True), prefix="--summary", doc=InputDocumentation(doc="Summarize multiple reports into a table."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abricate_V0_1_0().translate("wdl", allow_empty_container=True)

