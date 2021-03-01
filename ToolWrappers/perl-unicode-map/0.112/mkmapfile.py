from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Mkmapfile_V0_1_0 = CommandToolBuilder(tool="mkmapfile", base_command=["mkmapfile"], inputs=[ToolInput(tag="in_mapfile_output_write", input_type=File(optional=True), prefix="-M", doc=InputDocumentation(doc="Mapfile output. Write created mapping to this file.")), ToolInput(tag="in_force_write_mapfiles", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="force. Write new mapfiles even when they seem to be update.")), ToolInput(tag="in_overwrite_existing_files", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="overwrite. Existing files will be overwritten.")), ToolInput(tag="in_style_textual_input", input_type=String(optional=True), prefix="-S", doc=InputDocumentation(doc="Style. Textual input mapping is of style 'unicode' or 'keld'")), ToolInput(tag="in_update_mode_update", input_type=Boolean(optional=True), prefix="-U", doc=InputDocumentation(doc="Update mode. Update mapfiles according to REGISTRY file"))], outputs=[ToolOutput(tag="out_mapfile_output_write", output_type=File(optional=True), selector=InputSelector(input_to_select="in_mapfile_output_write", type_hint=File()), doc=OutputDocumentation(doc="Mapfile output. Write created mapping to this file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mkmapfile_V0_1_0().translate("wdl", allow_empty_container=True)

