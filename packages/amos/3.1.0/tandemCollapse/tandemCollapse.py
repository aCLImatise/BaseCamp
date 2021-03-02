from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String

Tandemcollapse_V0_1_0 = CommandToolBuilder(tool="tandemCollapse", base_command=["tandemCollapse"], inputs=[ToolInput(tag="in_location_bank_directory", input_type=Directory(optional=True), prefix="-b", doc=InputDocumentation(doc="- location of bank directory")), ToolInput(tag="in_config_file_specifies", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="- config file that specifies locations of tandems")), ToolInput(tag="in_output_location_misassemblies", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="- output location of mis-assemblies in final layout"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tandemcollapse_V0_1_0().translate("wdl", allow_empty_container=True)

