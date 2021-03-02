from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Ac_V0_1_0 = CommandToolBuilder(tool="AC", base_command=["AC"], inputs=[ToolInput(tag="in_show_ac_levels", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="show AC compression levels,")), ToolInput(tag="in_verbose_mode_more", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose mode (more information),")), ToolInput(tag="in_display_version_number", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="display version number,")), ToolInput(tag="in_force_overwrite_output", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="force overwrite of output,")), ToolInput(tag="in_level_compression_lazy", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="level of compression [1;7] (lazy -tm setup),")), ToolInput(tag="in_threshold_frequency_discard", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="threshold frequency to discard from alphabet,")), ToolInput(tag="in_it_creates_file", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="it creates a file with the extension '.iae'\nwith the respective information content.")), ToolInput(tag="in_reference_file_loaded", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="reference file ('-rm' are loaded here),"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ac_V0_1_0().translate("wdl", allow_empty_container=True)

