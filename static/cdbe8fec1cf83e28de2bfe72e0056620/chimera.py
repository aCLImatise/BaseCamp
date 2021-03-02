from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Chimera_V0_1_0 = CommandToolBuilder(tool="chimera", base_command=["chimera"], inputs=[ToolInput(tag="in_allow_percent_error", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="allow 'erate' percent error (default is AS_OVL_ERROR_RATE environment variable)")), ToolInput(tag="in_allow__errors", input_type=String(optional=True), prefix="-E", doc=InputDocumentation(doc="allow 'elimit' errors")), ToolInput(tag="in_min_in_nie_pair", input_type=String(optional=True), prefix="-mininniepair", doc=InputDocumentation(doc="trim if at least n pairs of innie frags detect chimer")), ToolInput(tag="in_min_overhanging", input_type=String(optional=True), prefix="-minoverhanging", doc=InputDocumentation(doc="trim if at least n frags detect chimer")), ToolInput(tag="in_use_mates", input_type=Boolean(optional=True), prefix="-usemates", doc=InputDocumentation(doc="trim if the read is not spanned by overlaps, and not spanned by mates")), ToolInput(tag="in_write_logging_summary", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="write a logging and a summary of fixes to files with prefix P")), ToolInput(tag="in_log_update_store", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="compute and log, but don't update the store")), ToolInput(tag="in_limit_processing_end", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="limit processing to only reads from bgn to end (inclusive)")), ToolInput(tag="in_sub_read_log", input_type=Boolean(optional=True), prefix="-subreadlog", doc=InputDocumentation(doc="write (large) subread logging file")), ToolInput(tag="in_var_9", input_type=String(optional=True), prefix="-O", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-G", doc=InputDocumentation(doc="")), ToolInput(tag="in_opts", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chimera_V0_1_0().translate("wdl", allow_empty_container=True)

