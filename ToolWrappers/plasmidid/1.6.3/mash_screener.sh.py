from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Int, Float

Mash_Screener_Sh_V0_1_0 = CommandToolBuilder(tool="mash_screener.sh", base_command=["mash_screener.sh"], inputs=[ToolInput(tag="in_i", input_type=Directory(optional=True), prefix="-i", doc=InputDocumentation(doc="directory (optional)")), ToolInput(tag="in_o", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="directory (optional)")), ToolInput(tag="in_to_screen_fasta", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="to screen (.fasta)")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="name")), ToolInput(tag="in_name_optional_unset", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="name (optional). If unset, samples will be gathered in NO_GROUP group")), ToolInput(tag="in_one", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="corresponding to paired-end R1")), ToolInput(tag="in_two", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="corresponding to paired-end R2")), ToolInput(tag="in_identity_value_retieve", input_type=Float(optional=True), prefix="-f", doc=InputDocumentation(doc="identity value to retieve sequence ids with at least this value (default 0.9)")), ToolInput(tag="in_winner_takes_it", input_type=String(optional=True), prefix="-w", doc=InputDocumentation(doc="winner takes it all")), ToolInput(tag="in_of_threads", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc="of threads")), ToolInput(tag="in_usage_message", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="usage message"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mash_Screener_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

