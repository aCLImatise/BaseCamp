from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Splitreads_V0_1_0 = CommandToolBuilder(tool="splitReads", base_command=["splitReads"], inputs=[ToolInput(tag="in_path_read_store", input_type=File(optional=True), prefix="-S", doc=InputDocumentation(doc="path to read store")), ToolInput(tag="in_path_overlap_store", input_type=File(optional=True), prefix="-O", doc=InputDocumentation(doc="path to overlap store")), ToolInput(tag="in_output_prefix_logging", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="output prefix, for logging")), ToolInput(tag="in_limit_processing_end", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="limit processing to only reads from bgn to end (inclusive)")), ToolInput(tag="in_ci", input_type=File(optional=True), prefix="-Ci", doc=InputDocumentation(doc="path to input clear ranges")), ToolInput(tag="in_co", input_type=File(optional=True), prefix="-Co", doc=InputDocumentation(doc="path to ouput clear ranges")), ToolInput(tag="in_ignore_overlaps_more", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="ignore overlaps with more than 'erate' percent error")), ToolInput(tag="in_minlength", input_type=String(optional=True), prefix="-minlength", doc=InputDocumentation(doc="reads trimmed below this many bases are deleted"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splitreads_V0_1_0().translate("wdl", allow_empty_container=True)

