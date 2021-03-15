from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Ms_Table_To_Single_V0_1_0 = CommandToolBuilder(tool="MS_table_to_single", base_command=["MS-table-to-single"], inputs=[ToolInput(tag="in_species_table", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="species table [Required]")), ToolInput(tag="in_input_table_reversed", input_type=String(optional=True), prefix="-R", doc=InputDocumentation(doc="the input table is reversed, T(rue) or F(alse), default is false [Optional]")), ToolInput(tag="in_file_directory_default", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="file directory, default is 'result'")), ToolInput(tag="in_name_of_output", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="name of output"))], outputs=[], container="quay.io/biocontainers/dms:1.1--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ms_Table_To_Single_V0_1_0().translate("wdl")

