from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Directory

Krocus_Database_Downloader_V0_1_0 = CommandToolBuilder(tool="krocus_database_downloader", base_command=["krocus_database_downloader"], inputs=[ToolInput(tag="in_list_species", input_type=Boolean(optional=True), prefix="--list_species", doc=InputDocumentation(doc="List all available species (default: False)")), ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="Species to download (default: None)")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--output_directory", doc=InputDocumentation(doc="Output directory (default: mlst_files)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Turn on debugging (default: False)"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output directory (default: mlst_files)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Krocus_Database_Downloader_V0_1_0().translate("wdl", allow_empty_container=True)

