from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean, File

Vdb_Diff_2_V0_1_0 = CommandToolBuilder(tool="vdb_diff.2", base_command=["vdb-diff.2"], inputs=[ToolInput(tag="in_rows", input_type=String(optional=True), prefix="--rows", doc=InputDocumentation(doc="set of rows to be comparend (default all)")), ToolInput(tag="in_columns", input_type=String(optional=True), prefix="--columns", doc=InputDocumentation(doc="set of columns to be compared (default\nall)")), ToolInput(tag="in_table", input_type=String(optional=True), prefix="--table", doc=InputDocumentation(doc="name of table (in case of database to be")), ToolInput(tag="in_max_err", input_type=Int(optional=True), prefix="--maxerr", doc=InputDocumentation(doc="max errors im comparing (default 1)")), ToolInput(tag="in_intersect", input_type=Boolean(optional=True), prefix="--intersect", doc=InputDocumentation(doc="intersect column-set from both runs")), ToolInput(tag="in_exclude", input_type=String(optional=True), prefix="--exclude", doc=InputDocumentation(doc="exclude these columns from comapring")), ToolInput(tag="in_col_by_col", input_type=Boolean(optional=True), prefix="--col-by-col", doc=InputDocumentation(doc="exclude these columns from comapring")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase the verbosity of the program\nstatus messages. Use multiple times for more\nverbosity. Negates quiet.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Turn off all status messages for the\nprogram. Negated by verbose.")), ToolInput(tag="in_option_file", input_type=File(optional=True), prefix="--option-file", doc=InputDocumentation(doc="Read more options and parameters from the")), ToolInput(tag="in_compared", input_type=String(), position=0, doc=InputDocumentation(doc="-p|--progress                    show progress in percent ")), ToolInput(tag="in_quit_dot", input_type=String(), position=1, doc=InputDocumentation(doc="-L|--log-level <level>           Logging level as number or enum string. One ")), ToolInput(tag="in_file_dot", input_type=File(), position=0, doc=InputDocumentation(doc="vdb-diff.2 : 2.10.8"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vdb_Diff_2_V0_1_0().translate("wdl", allow_empty_container=True)

