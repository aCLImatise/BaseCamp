from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Glistmaker_V0_1_0 = CommandToolBuilder(tool="glistmaker", base_command=["glistmaker"], inputs=[ToolInput(tag="in_word_length", input_type=Int(optional=True), prefix="--wordlength", doc=InputDocumentation(doc="- specify index wordsize (1-32) (default 16)")), ToolInput(tag="in_cut_off", input_type=Int(optional=True), prefix="--cutoff", doc=InputDocumentation(doc="- specify frequency cut-off (default 1)")), ToolInput(tag="in_output_name", input_type=String(optional=True), prefix="--outputname", doc=InputDocumentation(doc="- specify output name (default 'out')")), ToolInput(tag="in_num_threads", input_type=Boolean(optional=True), prefix="--num_threads", doc=InputDocumentation(doc="- number of threads the program is run on (default MIN(8, num_input_files))")), ToolInput(tag="in_max_tables", input_type=Boolean(optional=True), prefix="--max_tables", doc=InputDocumentation(doc="- maximum number of temporary tables (default MAX(num_threads, 2))")), ToolInput(tag="in_table_size", input_type=Boolean(optional=True), prefix="--table_size", doc=InputDocumentation(doc="- maximum size of the temporary table (default 500000000)")), ToolInput(tag="in_increase_debug_level", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="- increase debug level")), ToolInput(tag="in_input_files", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Glistmaker_V0_1_0().translate("wdl", allow_empty_container=True)

