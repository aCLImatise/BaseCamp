from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File, Boolean

Align_Cache_V0_1_0 = CommandToolBuilder(tool="align_cache", base_command=["align-cache"], inputs=[ToolInput(tag="in_threshold", input_type=String(optional=True), prefix="--threshold", doc=InputDocumentation(doc="cache PRIMARY_ALIGNMENT records with\ndifference between values of ALIGN_ID and\nMATE_ALIGN_ID >= the value of 'threshold'\noption")), ToolInput(tag="in_cursor_cache", input_type=Int(optional=True), prefix="--cursor-cache", doc=InputDocumentation(doc="the size of the read cursor in Megabytes")), ToolInput(tag="in_min_cache_count", input_type=Int(optional=True), prefix="--min-cache-count", doc=InputDocumentation(doc="if the number of primary alignment ids in\nthe src db selected for caching is less\nthan <min-cache-count>, the cache db will\nnot be created at all")), ToolInput(tag="in_xml_log", input_type=File(optional=True), prefix="--xml-log", doc=InputDocumentation(doc="produce XML-formatted log file")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase the verbosity of the program\nstatus messages. Use multiple times for more\nverbosity. Negates quiet.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Turn off all status messages for the\nprogram. Negated by verbose.")), ToolInput(tag="in_option_file", input_type=File(optional=True), prefix="--option-file", doc=InputDocumentation(doc="Read more options and parameters from the")), ToolInput(tag="in_src_db_path", input_type=File(), position=0, doc=InputDocumentation(doc="Path to the database")), ToolInput(tag="in_new_cache_db_path", input_type=File(), position=1, doc=InputDocumentation(doc="Path to the new cache database to be created")), ToolInput(tag="in_quit_dot", input_type=String(), position=2, doc=InputDocumentation(doc="-L|--log-level <level>           Logging level as number or enum string. One ")), ToolInput(tag="in_file_dot", input_type=File(), position=0, doc=InputDocumentation(doc="align-cache : 2.10.8"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Align_Cache_V0_1_0().translate("wdl", allow_empty_container=True)

